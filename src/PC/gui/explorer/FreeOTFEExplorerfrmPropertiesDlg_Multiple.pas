unit FreeOTFEExplorerfrmPropertiesDlg_Multiple;

interface

uses
  Classes, ComCtrls, Controls, Dialogs, ExtCtrls, Forms,
  FreeOTFEExplorerfrmPropertiesDlg_Base, Graphics, Messages, StdCtrls, SysUtils, Variants, Windows;

type
  TfrmPropertiesDialog_Multiple = class (TfrmPropertiesDialog)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  PRIVATE
    { Private declarations }
  PUBLIC
    MultipleItems: TStringList;
    ParentDir:     WideString;
  end;


implementation

{$R *.dfm}

uses
  SDFilesystem_FAT, SDUGeneral,
  SDUGraphics,
  SDUi18n;

procedure TfrmPropertiesDialog_Multiple.FormCreate(Sender: TObject);
begin
  inherited;
  MultipleItems := TStringList.Create();
end;

procedure TfrmPropertiesDialog_Multiple.FormDestroy(Sender: TObject);
begin
  MultipleItems.Free();

  inherited;
end;

procedure TfrmPropertiesDialog_Multiple.FormShow(Sender: TObject);
var
  totalSize:              ULONGLONG;
  totalDirCnt:            Integer;
  totalFileCnt:           Integer;
  tmpIcon:                TIcon;
  tmpSize:                ULONGLONG;
  tmpDirCnt:              Integer;
  tmpFileCnt:             Integer;
  i:                      Integer;
  allOK:                  Boolean;
  filenamesOnlyCommaText: String;
begin
  inherited;

  for i := 0 to (MultipleItems.Count - 1) do begin
    if (filenamesOnlyCommaText <> '') then begin
      filenamesOnlyCommaText := filenamesOnlyCommaText + ', ';
    end;

    filenamesOnlyCommaText := filenamesOnlyCommaText + ExtractFilename(MultipleItems[i]);
  end;
  self.Caption := SDUParamSubstitute(_('%1 Properties'), [filenamesOnlyCommaText]);


  totalSize    := 0;
  totalDirCnt  := 0;
  totalFileCnt := 0;
  for i := 0 to (MultipleItems.Count - 1) do begin
    allOK := Filesystem.ItemSize(MultipleItems[i], tmpSize, tmpDirCnt, tmpFileCnt);
    if not (allOK) then begin
      break;
    end else begin
      totalSize    := totalSize + tmpSize;
      totalDirCnt  := totalDirCnt + tmpDirCnt;
      totalFileCnt := totalFileCnt + tmpFileCnt;
    end;

  end;

  // Change borders on "filename"; user can *never* edit it, so make it look
  // more like a label
  edFilename.BevelOuter  := bvNone;
  edFilename.BevelInner  := bvNone;
  edFilename.BorderStyle := bsNone;
  edFilename.Text        := SDUParamSubstitute(_('%1 Files, %2 Folders'),
    [totalFileCnt, totalDirCnt]);
  edFileType.Caption     := _('Multiple types');
  edLocation.Caption     := SDUParamSubstitute(_('All in %1'), [ParentDir]);
  edSize.Caption         := SDUParamSubstitute(_('%1 (%2 bytes)'),
    [SDUFormatAsBytesUnits(totalSize, 2), SDUIntToStrThousands(totalSize)]);


  tmpIcon := TIcon.Create();
  try
    if SDULoadDLLIcon(DLL_SHELL32, False, DLL_SHELL32_MULTIPLE_FILES, tmpIcon) then
    begin
      imgFileType.Picture.Assign(tmpIcon);
    end;
  finally
    tmpIcon.Free();
  end;

end;

end.
