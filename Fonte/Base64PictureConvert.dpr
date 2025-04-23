program Base64PictureConvert;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
