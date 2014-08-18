

<meta content="text/html; charset=iso-8859-1" http-equiv="Content-Type">
<meta name="keywords" content="disk encryption, security, transparent, AES, OTFE, plausible deniability, virtual drive, Linux, MS Windows, portable, USB drive, partition">
<meta name="description" content="DoxBox: An OpenSource 'on-the-fly' transparent disk encryption program for PCs. Using this software, you can create one or more &quot;virtual disks&quot; on your PC - anything written to these disks is automatically, and securely, encrypted before being stored on your computers hard drive.">

<meta name="author" content="Sarah Dean">
<meta name="copyright" content="Copyright 2004, 2005, 2006, 2007, 2008 Sarah Dean">
<meta name="ROBOTS" content="ALL">

<TITLE>Introduction</TITLE>

<link href="./styles_common.css" rel="stylesheet" type="text/css">

<link rev="made" href="mailto:sdean12@sdean12.org">
<link rel="shortcut icon" href="./images/favicon.ico" type="image/x-icon">

<SPAN CLASS="master_link">
[![DoxBox logo](./images/FreeOTFE.gif)](http://DoxBox.squte.com/)
[DoxBox](http://DoxBox.squte.com/)
</SPAN>
<SPAN CLASS="master_title">
_OpenSource disk encryption for Windows_
</SPAN>

     
            
## Introduction

DoxBox: An OpenSource "on-the-fly" transparent disk encryption program for MS  Windows 2000/XP/Vista/Windows 7 PCs (both 32 and 64 bit)

Using this software, you can create one or more  "virtual disks" on your computer - anything written to these disks is  automatically, and securely, encrypted before being stored on your computers  hard drive.

* * * 
<A NAME="level_3_heading_1">
### Features
</A>

<UL>
* *Source code freely available*
* Easy to use; full wizard included for creating new volumes
* Powerful: Supports numerous hash/encryption algorithms, and provides a greater level of flexibility than a number of other (including many commercial!) OTFE systems
* Available in English, Spanish, German, Italian, French, Czech, Japanese, Croatian, Greek and Russian - with support for other language translations
* Hash algorithms include: MD5, SHA-512, RIPEMD-320, Tiger and _many_ more
* Cyphers include AES (256 bit), Twofish (256 bit), Blowfish (448 bit), Serpent (256 bit) and _many_ more
* Cypher modes supported include XTS, LRW and CBC (including XTS-AES-128 and XTS-AES-256)
* "Portable mode" included; DoxBox doesn't need to be installed before it can be used - making it ideal for carrying your data securely on USB drives!
* Security tokens/smartcards supported for extra (optional) security
* Operates under both PC (MS Windows 2000/XP/Vista/Windows 7) platforms
* Linux compatibility (Cryptoloop "losetup", dm-crypt and LUKS supported)
* "Hidden" volumes may be concealed within other DoxBoxes, providing "plausible deniability"
* DoxBoxes have no "signature" to allow them to be identified as such
* Encrypted volumes can be either file or partition based.
* Modular design allowing 3rd party drivers to be created, incorporating new hash/cypher algorithms
* Supports password salting (up to 512 bits), reducing the risks presented by dictionary attacks.
* Allows users to backup and restore the critical areas of volume files.
* Keyfile support included; store volumes and their associated metadata separately.
* Volume file timestamps and attributes are reset after dismounting, increasing "plausible deniability"
* Supports volumes files up to 2^63 bytes (8388608 TB) 
* Comprehensive documentation
* Naturally, fully supported by [SecureTrayUtil](http://www.SDean12.org/SecureTrayUtil.htm).
* _*Plus more...!*_
</UL>

Screenshots of DoxBox are [available](http://DoxBox.squte.com/screenshots_pc_main.html)

Cyphers included:

<TABLE style="text-align: left;">

  <TBODY>
    <TR>
      <TH>Cypher </TH>
      
      <TH>Key length (in bits)</TH>
      <TH>Block Length (in bits) </TH>
      <TH>Modes </TH>
<TH>Source Library </TH>
<TH>Comments </TH>

    </TR>
 <TR> <TD>AES</TD> <TD>128</TD> <TD>128</TD> <TD>CBC/XTS       </TD> <TD>Dr. Brian R. Gladman</TD> <TD>XTS version aka XTS-AES-128</TD> </TR>
<TR> <TD>AES</TD> <TD>192</TD> <TD>128</TD> <TD>CBC/XTS       </TD> <TD>Dr. Brian R. Gladman</TD><TD></TD> </TR>
<TR> <TD>AES</TD> <TD>256</TD> <TD>128</TD> <TD>CBC/XTS       </TD> <TD>Dr. Brian R. Gladman</TD> <TD>XTS version aka XTS-AES-256</TD> </TR>

 <TR> <TD>AES</TD> <TD>128</TD> <TD>128</TD> <TD>CBC/LRW/XTS       </TD> <TD>LibTomCrypt </TD><TD>XTS version aka XTS-AES-128</TD> </TR>
<TR>
<TD>AES</TD>

<TD>192</TD>
<TD>128</TD>
      <TD>CBC/LRW/XTS       </TD>
<TD>LibTomCrypt </TD><TD></TD>

</TR>
<TR>
<TD>AES</TD>

<TD>256</TD>
<TD>128</TD>
      <TD>CBC/LRW/XTS       </TD>
<TD>LibTomCrypt </TD><TD>XTS version aka XTS-AES-256 </TD>

</TR>

 <TR>
<TD>Blowfish</TD>

<TD>128</TD>

<TD>64</TD>

      <TD>CBC              </TD>
<TD>LibTomCrypt </TD><TD></TD>

</TR>
<TR>
<TD>Blowfish</TD>

<TD>160</TD>

<TD>64 </TD>
      <TD>CBC              </TD>
<TD>LibTomCrypt </TD><TD></TD>

</TR>
<TR>
<TD>Blowfish</TD>

<TD>192</TD>

<TD>64 </TD>
      <TD>CBC              </TD>
<TD>LibTomCrypt </TD><TD></TD>

</TR>
<TR>
<TD>Blowfish</TD>

<TD>256</TD>

<TD>64</TD>
      <TD>CBC              </TD>
<TD>LibTomCrypt </TD><TD></TD>

</TR>
<TR>
<TD>Blowfish</TD>

<TD>448</TD>

<TD>64 </TD>
      <TD>CBC              </TD>
<TD>LibTomCrypt </TD><TD></TD>

</TR>

<TR>
<TD>CAST5</TD>

<TD>128</TD>

<TD>64</TD>

      <TD>CBC              </TD>
<TD>LibTomCrypt </TD><TD>aka CAST-128</TD>

</TR>

 <TR>
      <TD>CAST6</TD>
      
      <TD>128</TD>

      <TD>128</TD>
      <TD>CBC       </TD>
<TD>Dr. Brian R. Gladman</TD>
      <TD>aka CAST-256</TD>
    </TR>
    <TR>
      <TD>CAST6</TD>
      
      <TD>160</TD>

      <TD>128</TD>
      <TD>CBC       </TD>
<TD>Dr. Brian R. Gladman</TD>
      <TD>aka CAST-256</TD>
    </TR>
    <TR>
      <TD>CAST6</TD>
      
      <TD>192</TD>

      <TD>128</TD>
      <TD>CBC       </TD>
<TD>Dr. Brian R. Gladman</TD>
      <TD>aka CAST-256</TD>
    </TR>
    <TR>
      <TD>CAST6</TD>
      
      <TD>224</TD>

      <TD>128</TD>
      <TD>CBC       </TD>
<TD>Dr. Brian R. Gladman</TD>
      <TD>aka CAST-256</TD>
    </TR>
    <TR>
      <TD>CAST6</TD>
      
      <TD>256</TD>

      <TD>128</TD>
      <TD>CBC       </TD>
<TD>Dr. Brian R. Gladman</TD>
      <TD>aka CAST-256</TD>
    </TR>
<TR>
<TD>DES</TD>

<TD>64</TD>

<TD>64</TD>

      <TD>CBC              </TD>
<TD>LibTomCrypt </TD><TD></TD>

</TR>
<TR>
<TD>3DES</TD>

<TD>192</TD>

<TD>64</TD>

      <TD>CBC              </TD>
<TD>LibTomCrypt </TD><TD>Standard encrypt, decrypt, encrypt</TD>

</TR>
 <TR>
      <TD>MARS</TD>

      
      <TD>128</TD>

      <TD>128</TD>

      <TD>CBC/XTS       </TD>
<TD>Dr. Brian R. Gladman</TD>
      <TD></TD>

    </TR>
    <TR>
      <TD>MARS</TD>

      
      <TD>192</TD>

      <TD>128</TD>

      <TD>CBC/XTS       </TD>
<TD>Dr. Brian R. Gladman</TD>
      <TD></TD>

    </TR>
    <TR>
      <TD>MARS</TD>

      
      <TD>256</TD>

      <TD>128</TD>

      <TD>CBC/XTS       </TD>
<TD>Dr. Brian R. Gladman</TD>
      <TD></TD>

    </TR>
<TR>
<TD>Null</TD>

<TD>0</TD>

<TD>(variable)</TD>

      <TD>n/a</TD>

<TD>n/a</TD>
<TD></TD>

</TR>

<TR>
<TD>RC-6</TD>

<TD>128</TD>

<TD>128</TD>

      <TD>CBC/XTS       </TD>
<TD>Dr. Brian R. Gladman</TD><TD></TD>

</TR>
<TR>
<TD>RC-6</TD>

<TD>192</TD>

<TD>128</TD>

      <TD>CBC/XTS       </TD>
<TD>Dr. Brian R. Gladman</TD><TD></TD>

</TR>
<TR>
<TD>RC-6</TD>

<TD>256</TD>

<TD>128</TD>

      <TD>CBC/XTS       </TD>
<TD>Dr. Brian R. Gladman</TD><TD></TD>

</TR>
<TR>
<TD>RC-6</TD>

<TD>128</TD>

<TD>128</TD>

      <TD>CBC/LRW/XTS       </TD>
<TD>LibTomCrypt </TD><TD></TD>

</TR>
<TR>
<TD>RC-6</TD>

<TD>192</TD>

<TD>128</TD>

      <TD>CBC/LRW/XTS       </TD>
<TD>LibTomCrypt </TD><TD></TD>

</TR>
<TR>
<TD>RC-6</TD>

<TD>256</TD>

<TD>128</TD>

      <TD>CBC/LRW/XTS       </TD>
<TD>LibTomCrypt </TD><TD></TD>

</TR>
<TR>
<TD>RC-6</TD>

<TD>1024</TD>

<TD>128</TD>

      <TD>CBC/LRW/XTS       </TD>
<TD>LibTomCrypt </TD><TD></TD>

</TR>

 <TR>
      <TD>Serpent</TD>
      
      <TD>128</TD>

      <TD>128</TD>
      <TD>CBC/XTS       </TD>
<TD>Dr. Brian R. Gladman</TD>
      <TD></TD>

    </TR>
    <TR>
      <TD>Serpent</TD>
      
      <TD>192</TD>

      <TD>128</TD>
      <TD>CBC/XTS       </TD>
<TD>Dr. Brian R. Gladman</TD>
      <TD></TD>

    </TR>
    <TR>
<TD>Serpent</TD>

<TD>256</TD>

<TD>128</TD>

      <TD>CBC/XTS       </TD>
<TD>Dr. Brian R. Gladman</TD>

<TD></TD>
</TR>
    <TR>
      <TD>Twofish</TD>
      
      <TD>128</TD>
      <TD>128</TD>
      <TD>CBC/XTS       </TD>
<TD>Dr. Brian R. Gladman</TD>
      <TD></TD>

    </TR>
    <TR>
      <TD>Twofish</TD>
      
      <TD>192</TD>

      <TD>128</TD>
      <TD>CBC/XTS       </TD>
<TD>Dr. Brian R. Gladman</TD>
      <TD></TD>

    </TR>
    <TR>
      <TD>Twofish</TD>
      
      <TD>256</TD>

      <TD>128</TD>
      <TD>CBC/XTS       </TD>
<TD>Dr. Brian R. Gladman</TD>
      <TD></TD>

    </TR>
<TR>
<TD>Twofish</TD>

<TD>128</TD>

<TD>128</TD>

      <TD>CBC       </TD>
<TD>Hi/fn and Counterpane Systems </TD><TD>x86 systems _only_</TD>

</TR>
<TR>
<TD>Twofish</TD>

<TD>192</TD>

<TD>128</TD>
      <TD>CBC       </TD>
<TD>Hi/fn and Counterpane Systems</TD><TD>x86 systems _only_</TD>

</TR>
<TR>
<TD>Twofish</TD>

<TD>256</TD>

<TD>128</TD>

      <TD>CBC       </TD>
<TD>Hi/fn and Counterpane Systems</TD><TD>x86 systems _only_</TD>

</TR>
<TR>
<TD>Twofish</TD>

<TD>128</TD>

<TD>128</TD>

      <TD>CBC/LRW/XTS</TD>
<TD>LibTomCrypt </TD><TD></TD>

</TR>
<TR>
<TD>Twofish</TD>

<TD>192</TD>

<TD>128</TD>
      <TD>CBC/LRW/XTS</TD>
<TD>LibTomCrypt </TD><TD></TD>

</TR>
<TR>
<TD>Twofish</TD>

<TD>256</TD>

<TD>128</TD>

      <TD>CBC/LRW/XTS</TD>
<TD>LibTomCrypt </TD><TD></TD>

</TR>
<TR>
<TD>XOR</TD>

<TD>(variable)</TD>

<TD>(variable)</TD>
      <TD>n/a</TD>

<TD>n/a</TD>
<TD></TD>

</TR>

  </TBODY>
</TABLE>

Hash algorithms included:

<TABLE style="text-align: left;">

  <TBODY>
    <TR> <TH>Hash </TH> <TH>Hash Length (in bits) </TH> <TH>Block Length (in bits) </TH> <TH>Source Library </TH> </TR>
    <TR> <TD>MD2</TD> <TD>128</TD> <TD>128</TD> <TD>LibTomCrypt        </TD> </TR>
    <TR> <TD>MD4</TD> <TD>128</TD> <TD>512</TD> <TD>LibTomCrypt </TD> </TR>
    <TR> <TD>MD5</TD> <TD>128</TD> <TD>512</TD> <TD>LibTomCrypt        </TD> </TR>
    <TR>
      <TD>Null</TD>

      <TD>(variable)</TD>

      <TD>(variable)</TD>
<TD>n/a</TD>

    </TR>
 <TR>
<TD>RIPEMD-128</TD>

<TD>128</TD>

<TD>512</TD>
<TD>LibTomCrypt </TD>
</TR>
<TR>
<TD>RIPEMD-160</TD>

<TD>160</TD>

<TD>512</TD>
<TD>LibTomCrypt </TD>
</TR>
<TR>
<TD>RIPEMD-160 (Linux; Twice, with A)</TD>

<TD>320</TD>

<TD>512</TD>
<TD>LibTomCrypt </TD>
</TR>
<TR> <TD>RIPEMD-256</TD> <TD>256</TD> <TD>512</TD> <TD>LibTomCrypt</TD> </TR>
<TR> <TD>RIPEMD-320</TD> <TD>320</TD> <TD>512</TD> <TD>LibTomCrypt</TD> </TR>

    <TR> <TD>SHA-1</TD> <TD>160</TD> <TD>512</TD> <TD>LibTomCrypt        </TD> </TR>
    <TR> <TD>SHA-224</TD> <TD>224</TD> <TD>512</TD> <TD>LibTomCrypt        </TD> </TR>
    <TR> <TD>SHA-256</TD> <TD>256</TD> <TD>512</TD> <TD>LibTomCrypt        </TD> </TR>
    <TR> <TD>SHA-384</TD> <TD>384</TD> <TD>1024</TD> <TD>LibTomCrypt        </TD> </TR>
    <TR> <TD>SHA-512</TD> <TD>512</TD> <TD>1024</TD> <TD>LibTomCrypt        </TD> </TR>
    <TR> <TD>Tiger</TD> <TD>192</TD> <TD>512</TD> <TD>LibTomCrypt        </TD> </TR>
    <TR> <TD>Whirlpool</TD> <TD>512</TD> <TD>512</TD> <TD>LibTomCrypt        </TD> </TR>

  </TBODY>
</TABLE>


