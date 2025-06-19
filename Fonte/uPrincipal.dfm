object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Encode & Encode Pictures in Base64'
  ClientHeight = 420
  ClientWidth = 585
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Memo: TMemo
    Left = 0
    Top = 273
    Width = 585
    Height = 147
    Align = alClient
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object Panel: TPanel
    Left = 0
    Top = 0
    Width = 585
    Height = 273
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object ImgEncode: TImage
      Left = 8
      Top = 8
      Width = 217
      Height = 257
      Proportional = True
    end
    object ImgDecode: TImage
      Left = 359
      Top = 8
      Width = 217
      Height = 257
      Proportional = True
    end
    object btnEncode: TButton
      Left = 236
      Top = 112
      Width = 113
      Height = 25
      Caption = 'Encode Picture'
      TabOrder = 0
      OnClick = btnEncodeClick
    end
    object btnDecode: TButton
      Left = 236
      Top = 143
      Width = 113
      Height = 25
      Caption = 'Decode Picture'
      TabOrder = 1
      OnClick = btnDecodeClick
    end
  end
  object OpenDialog: TOpenDialog
    Left = 296
    Top = 344
  end
end
