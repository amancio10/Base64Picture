# Base64Picture
 Encode & Encode Pictures in Base64
## ⚡️ Uses
```delphi
uses
 JPEG,
 PNGImage,
 System.NetEncoding;
```
## ⚡️ Encode
```delphi
procedure Encode();
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
```
## ⚡️ Decode
```delphi
procedure Decode();
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
```
