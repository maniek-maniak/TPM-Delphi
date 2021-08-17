object Form1: TForm1
  Left = 585
  Top = 303
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'TPM by M.Kowalczyk'
  ClientHeight = 133
  ClientWidth = 197
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 56
    Width = 27
    Height = 13
    Caption = 'Haslo'
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 26
    Height = 13
    Caption = 'Login'
  end
  object BtnLogin: TButton
    Left = 8
    Top = 104
    Width = 185
    Height = 25
    Caption = 'Zaloguj si'#281
    TabOrder = 0
    OnClick = BtnLoginClick
  end
  object InputPassword: TEdit
    Left = 8
    Top = 72
    Width = 185
    Height = 21
    TabOrder = 1
  end
  object InputLogin: TEdit
    Left = 8
    Top = 24
    Width = 185
    Height = 21
    TabOrder = 2
  end
  object IdHTTP1: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 160
    Top = 65528
  end
end
