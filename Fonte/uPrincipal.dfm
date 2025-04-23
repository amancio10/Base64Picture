object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Encode & Encode Pictures in Base64'
  ClientHeight = 427
  ClientWidth = 583
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object ImgEncode: TImage
    Left = 8
    Top = 8
    Width = 217
    Height = 257
  end
  object ImgDecode: TImage
    Left = 359
    Top = 8
    Width = 217
    Height = 257
  end
  object Memo: TMemo
    Left = 8
    Top = 271
    Width = 568
    Height = 153
    TabOrder = 0
  end
  object btnEncode: TButton
    Left = 240
    Top = 24
    Width = 113
    Height = 25
    Caption = 'Encode Picture'
    TabOrder = 1
    OnClick = btnEncodeClick
  end
  object btnDecode: TButton
    Left = 240
    Top = 55
    Width = 113
    Height = 25
    Caption = 'Decode Picture'
    TabOrder = 2
    OnClick = btnDecodeClick
  end
  object OpenDialog: TOpenDialog
    Left = 272
    Top = 128
  end
end
