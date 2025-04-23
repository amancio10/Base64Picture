unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ExtDlgs;

type
  TfrmMain = class(TForm)
    ImgEncode: TImage;
    ImgDecode: TImage;
    Memo: TMemo;
    btnEncode: TButton;
    btnDecode: TButton;
    OpenDialog: TOpenDialog;
    procedure btnEncodeClick(Sender: TObject);
    procedure btnDecodeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses
 JPEG,
 PNGImage,
 System.NetEncoding;

{$R *.dfm}

procedure TfrmMain.btnEncodeClick(Sender: TObject);
var
  Input, Output: TStringstream;
begin
  Input   := TStringstream.Create;
  Output  := TStringstream.Create;

  try
    if OpenDialog.Execute() then
    begin
      ImgEncode.Picture.LoadFromFile(OpenDialog.FileName);

      ImgEncode.Picture.SaveToStream(Input);
      Input.Position  := 0;
      Output.Position := 0;
      TNetEncoding.Base64.Encode(Input, Output);

      Memo.Text := Output.DataString;
    end;
  finally
    Input.Free;
    Output.Free;
  end;
end;

procedure TfrmMain.btnDecodeClick(Sender: TObject);
var
  Input, Output: TStringstream;
begin
  Input  := TStringStream.Create(Memo.Text);
  Output := TStringStream.Create;

  try
    Input.Position := 0;
    TNetEncoding.Base64.Decode(Input, Output);
    Output.Position := 0;
    ImgDecode.Picture.LoadFromStream(Output);
  finally
    Input.Create;
    Output.Free;
  end;

end;

end.
