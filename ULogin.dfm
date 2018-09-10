object Login: TLogin
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Login'
  ClientHeight = 197
  ClientWidth = 325
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Plogin: TsPageControl
    Left = 0
    Top = 0
    Width = 325
    Height = 197
    ActivePage = TabLogin
    Align = alClient
    MultiLine = True
    TabHeight = 24
    TabOrder = 0
    TabPosition = tpLeft
    ActiveIsBold = True
    TabMargin = 5
    TabPadding = 5
    TabSpacing = 5
    TabsLineSkin = 'BUTTON'
    SkinData.SkinSection = 'RIBBONPAGE'
    object TabLogin: TsTabSheet
      Caption = 'Login'
      object sGroupBox2: TsGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 287
        Height = 183
        Align = alClient
        Caption = 'Login'
        TabOrder = 0
        object sLabel4: TsLabel
          Left = 117
          Top = 15
          Width = 52
          Height = 13
          Caption = 'Username:'
        end
        object sLabel5: TsLabel
          Left = 117
          Top = 72
          Width = 50
          Height = 13
          Caption = 'Password:'
        end
        object sEdit2: TsEdit
          Left = 32
          Top = 34
          Width = 225
          Height = 27
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = sEdit2KeyPress
        end
        object sButton2: TsButton
          Left = 5
          Top = 133
          Width = 135
          Height = 37
          Caption = '&Login'
          TabOrder = 2
          OnClick = sButton2Click
          OnKeyPress = sButton2KeyPress
        end
        object sEdit3: TsEdit
          Left = 32
          Top = 91
          Width = 225
          Height = 27
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4473924
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyPress = sEdit3KeyPress
        end
        object sButton3: TsButton
          Left = 146
          Top = 133
          Width = 135
          Height = 37
          Caption = '&Close'
          TabOrder = 3
          OnClick = sButton3Click
        end
      end
    end
    object TabSetting: TsTabSheet
      Caption = 'Koneksi'
      object sGroupBox1: TsGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 287
        Height = 183
        Align = alClient
        Caption = 'Koneksi Database'
        TabOrder = 0
        object sLabel10: TsLabel
          Left = 5
          Top = 25
          Width = 36
          Height = 13
          Caption = 'Server:'
        end
        object sLabel3: TsLabel
          Left = 5
          Top = 52
          Width = 20
          Height = 13
          Caption = 'Port'
        end
        object sLabel6: TsLabel
          Left = 5
          Top = 79
          Width = 52
          Height = 13
          Caption = 'Username:'
        end
        object sLabel9: TsLabel
          Left = 5
          Top = 105
          Width = 50
          Height = 13
          Caption = 'Password:'
        end
        object Port: TsEdit
          Left = 64
          Top = 49
          Width = 217
          Height = 21
          NumbersOnly = True
          TabOrder = 1
          Text = '3306'
          OnKeyPress = PortKeyPress
        end
        object username: TsEdit
          Left = 64
          Top = 76
          Width = 217
          Height = 21
          TabOrder = 2
          OnKeyPress = usernameKeyPress
        end
        object ButtonTest: TsButton
          Left = 5
          Top = 131
          Width = 277
          Height = 37
          Caption = 'Tes &Koneksi'
          TabOrder = 4
          OnClick = ButtonTestClick
          OnKeyPress = ButtonTestKeyPress
        end
        object password: TsEdit
          Left = 64
          Top = 101
          Width = 217
          Height = 21
          TabOrder = 3
          OnKeyPress = passwordKeyPress
        end
        object Server: TsEdit
          Left = 64
          Top = 22
          Width = 217
          Height = 21
          TabOrder = 0
          OnKeyPress = ServerKeyPress
        end
      end
    end
    object TabDbase: TsTabSheet
      Caption = 'Database'
      TabVisible = False
      object sGroupBox3: TsGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 287
        Height = 183
        Align = alClient
        Caption = 'Buat Database'
        TabOrder = 0
        object sButton4: TsButton
          Left = 29
          Top = 67
          Width = 228
          Height = 37
          Caption = 'Buat Database'
          TabOrder = 0
          OnClick = sButton4Click
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Database Persiapan|*.pskm'
    Options = [ofReadOnly, ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Title = 'Pilih File Persiapan Database'
    Left = 179
    Top = 83
  end
end
