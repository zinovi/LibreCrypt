/* LibTomCrypt, modular cryptographic library -- Tom St Denis
 *
 * LibTomCrypt is a library that provides various cryptographic
 * algorithms in a highly modular and flexible manner.
 *
 * The library is free for all purposes without any express
 * guarantee it works.
 *
 * Tom St Denis, tomstdenis@gmail.com, http://libtom.org
 */
#include "tomcrypt.h"

/** 
  @file omac_process.c
  LTC_OMAC1 support, process data, Tom St Denis
*/


#ifdef LTC_OMAC

/** 
   Process data through LTC_OMAC
   @param omac     The LTC_OMAC state
   @param in       The input data to send through LTC_OMAC
   @param inlen    The length of the input (octets)
   @return CRYPT_OK if successful
*/
int omac_process(omac_state *omac, const unsigned char *in, unsigned long inlen)
{
   unsigned long n, x, blklen;
   int           err;

   LTC_ARGCHK(omac  != NULL);
   LTC_ARGCHK(in    != NULL);
   if ((err = cipher_is_valid(omac->cipher_idx)) != CRYPT_OK) {
      return err;
   }

   if ((omac->buflen > (int)sizeof(omac->block)) || (omac->buflen < 0) ||
       (omac->blklen > (int)sizeof(omac->block)) || (omac->buflen > omac->blklen)) {
      return CRYPT_INVALID_ARG;
   }

#ifdef LTC_FAST
   blklen = cipher_descriptor[omac->cipher_idx].block_length;
   if (omac->buflen == 0 && inlen > blklen) {
      unsigned long y;
      for (x = 0; x < (inlen - blklen); x += blklen) {
          for (y = 0; y < blklen; y += sizeof(LTC_FAST_TYPE)) {
              *((LTC_FAST_TYPE*)(&omac->prev[y])) ^= *((LTC_FAST_TYPE*)(&in[y]));
          }
          in += blklen;
          if ((err = cipher_descriptor[omac->cipher_idx].ecb_encrypt(omac->prev, omac->prev, &omac->key)) != CRYPT_OK) {
             return err;
          }
      }
      inlen -= x;
    }
#endif

   while (inlen != 0) { 
       /* ok if the block is full we xor in prev, encrypt and replace prev */
       if (omac->buflen == omac->blklen) {
          for (x = 0; x < (unsigned long)omac->blklen; x++) {
              omac->block[x] ^= omac->prev[x];
          }
          if ((err = cipher_descriptor[omac->cipher_idx].ecb_encrypt(omac->block, omac->prev, &omac->key)) != CRYPT_OK) {
             return err;
          }
          omac->buflen = 0;
       }

       /* add bytes */
       n = MIN(inlen, (unsigned long)(omac->blklen - omac->buflen));
       XMEMCPY(omac->block + omac->buflen, in, n);
       omac->buflen  += n;
       inlen         -= n;
       in            += n;
   }

   return CRYPT_OK;
}

#endif


/* $Source: /cvs/libtom/libtomcrypt/src/mac/omac/omac_process.c,v $ */
/* $Revision: 1.13 $ */
/* $Date: 2007/05/12 14:37:41 $ */
