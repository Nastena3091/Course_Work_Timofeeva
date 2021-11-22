object Form3: TForm3
  Left = 349
  Top = 126
  BorderStyle = bsSingle
  Caption = #1043#1086#1083#1086#1074#1085#1072
  ClientHeight = 644
  ClientWidth = 753
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 753
    Height = 81
    Align = alTop
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lbl1: TLabel
      Left = 16
      Top = 8
      Width = 201
      Height = 18
      Caption = #1060#1110#1083#1100#1090#1088#1091#1074#1072#1090#1080' '#1087#1086' '#1085#1072#1079#1074#1110' '#1090#1086#1074#1072#1088#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 256
      Top = 8
      Width = 155
      Height = 18
      Caption = #1042#1080#1073#1077#1088#1110#1090#1100' '#1082#1086#1088#1080#1089#1090#1091#1074#1072#1095#1072':'
    end
    object Edit1: TEdit
      Left = 16
      Top = 32
      Width = 201
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = Edit1Change
    end
    object btn4: TButton
      Left = 504
      Top = 0
      Width = 249
      Height = 81
      Caption = #1055#1086#1095#1072#1090#1080' '#1088#1086#1073#1086#1090#1091
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      WordWrap = True
      OnClick = btn4Click
    end
    object dblkcbb1: TDBLookupComboBox
      Left = 256
      Top = 32
      Width = 233
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = #1058#1072#1073#1077#1083#1100#1085#1080#1081' '#1085#1086#1084#1077#1088
      ListField = #1055#1030#1041
      ListSource = DataModule2.dsWorker
      ParentFont = False
      TabOrder = 2
      OnClick = dblkcbb1Click
    end
  end
  object Panel2: TPanel
    Left = 503
    Top = 81
    Width = 250
    Height = 563
    Align = alRight
    Color = clCream
    TabOrder = 1
    Visible = False
    object lbl3: TLabel
      Left = 8
      Top = 8
      Width = 201
      Height = 65
      AutoSize = False
      Caption = #1052#1077#1085#1077#1076#1078#1077#1088': '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object lbl9: TLabel
      Left = 16
      Top = 72
      Width = 104
      Height = 18
      Caption = #1053#1072#1079#1074#1072' '#1082#1086#1084#1087#1072#1085#1110#1111':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl12: TLabel
      Left = 128
      Top = 72
      Width = 3
      Height = 13
      Visible = False
    end
    object lbl13: TLabel
      Left = 160
      Top = 72
      Width = 3
      Height = 13
      Visible = False
    end
    object lbl16: TLabel
      Left = 128
      Top = 48
      Width = 3
      Height = 13
      Visible = False
    end
    object DateTimePicker1: TDateTimePicker
      Left = 24
      Top = 128
      Width = 186
      Height = 26
      Date = 44508.861729791670000000
      Time = 44508.861729791670000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button2: TButton
      Left = 48
      Top = 160
      Width = 137
      Height = 33
      Caption = #1057#1090#1074#1086#1088#1080#1090#1080' '#1085#1072#1082#1083#1072#1076#1085#1091
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object grp1: TGroupBox
      Left = 1
      Top = 270
      Width = 248
      Height = 292
      Align = alBottom
      Caption = #1055#1088#1086#1076#1072#1078#1110
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      Visible = False
      object lbl4: TLabel
        Left = 21
        Top = 16
        Width = 189
        Height = 36
        Caption = #1042#1080#1073#1077#1088#1110#1090#1100' '#1087#1086#1090#1088#1110#1073#1085#1080#1081' '#1090#1086#1074#1072#1088' '#1079#13#10#1090#1072#1073#1083#1080#1094#1110' '#1090#1072' '#1074#1074#1077#1076#1110#1090#1100' '#1082#1110#1083#1100#1082#1110#1089#1090#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl10: TLabel
        Left = 24
        Top = 104
        Width = 40
        Height = 18
        Caption = #1057#1091#1084#1072':'
      end
      object lbl11: TLabel
        Left = 136
        Top = 104
        Width = 5
        Height = 18
      end
      object lbl14: TLabel
        Left = 200
        Top = 104
        Width = 27
        Height = 18
        Caption = #1075#1088#1085'.'
      end
      object lbl17: TLabel
        Left = 24
        Top = 136
        Width = 110
        Height = 18
        Caption = #1057#1091#1084#1072' '#1085#1072#1082#1083#1072#1076#1085#1086#1111':'
      end
      object lbl18: TLabel
        Left = 136
        Top = 136
        Width = 5
        Height = 18
      end
      object lbl19: TLabel
        Left = 200
        Top = 136
        Width = 27
        Height = 18
        Caption = #1075#1088#1085'.'
      end
      object ud1: TUpDown
        Left = 209
        Top = 64
        Width = 16
        Height = 26
        Associate = edt1
        Position = 1
        TabOrder = 0
      end
      object edt1: TEdit
        Left = 24
        Top = 64
        Width = 185
        Height = 26
        TabOrder = 1
        Text = '1'
        OnChange = edt1Change
      end
      object btn1: TButton
        Left = 24
        Top = 176
        Width = 201
        Height = 25
        Caption = #1044#1086#1076#1072#1090#1080' '#1090#1086#1074#1072#1088' '#1091' '#1085#1072#1082#1083#1072#1076#1085#1091
        TabOrder = 2
        OnClick = btn1Click
      end
      object btn2: TButton
        Left = 24
        Top = 216
        Width = 201
        Height = 25
        Caption = #1055#1086#1082#1072#1079#1072#1090#1080' '#1085#1072#1082#1083#1072#1076#1085#1091
        TabOrder = 3
        OnClick = btn2Click
      end
      object btn3: TButton
        Left = 24
        Top = 256
        Width = 201
        Height = 25
        Caption = #1047#1072#1082#1088#1080#1090#1080' '#1085#1072#1082#1083#1072#1076#1085#1091
        TabOrder = 4
        OnClick = btn3Click
      end
    end
    object grp2: TGroupBox
      Left = 1
      Top = 199
      Width = 248
      Height = 71
      Align = alBottom
      Caption = #1042#1080#1073#1088#1072#1085#1072' '#1085#1072#1082#1083#1072#1076#1085#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = False
      object lbl5: TLabel
        Left = 8
        Top = 24
        Width = 41
        Height = 18
        Caption = #1053#1072#1079#1074#1072
      end
      object lbl6: TLabel
        Left = 8
        Top = 48
        Width = 28
        Height = 18
        Caption = #1062#1110#1085#1072
      end
      object lbl7: TLabel
        Left = 88
        Top = 24
        Width = 5
        Height = 18
        Caption = ' '
      end
      object lbl8: TLabel
        Left = 88
        Top = 48
        Width = 5
        Height = 18
        Caption = ' '
      end
      object lbl15: TLabel
        Left = 144
        Top = 16
        Width = 5
        Height = 18
        Visible = False
      end
    end
    object dblkcbb2: TDBLookupComboBox
      Left = 24
      Top = 96
      Width = 185
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = #8470' '#1082#1083#1110#1108#1085#1090#1072
      ListField = #1053#1072#1079#1074#1072' '#1082#1086#1084#1087#1072#1085#1110#1111
      ListSource = DataModule2.dsClient
      ParentFont = False
      TabOrder = 4
    end
  end
  object dbgrd1: TDBGrid
    Left = 0
    Top = 81
    Width = 503
    Height = 563
    Align = alClient
    Color = clInfoBk
    DataSource = DataModule2.dsTovar
    FixedColor = clYellow
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object mm1: TMainMenu
    Top = 464
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N5: TMenuItem
        Caption = #1047#1072#1082#1088#1080#1090#1080
        OnClick = N5Click
      end
    end
    object N2: TMenuItem
      Caption = #1044#1086#1074#1110#1076#1085#1080#1082#1080
      OnClick = N2Click
    end
    object N4: TMenuItem
      Caption = #1055#1088#1086' '#1087#1088#1086#1075#1088#1072#1084#1091
      OnClick = N4Click
    end
    object N3: TMenuItem
      Caption = #1047#1084#1110#1085#1072' '#1082#1086#1088#1080#1089#1090#1091#1074#1072#1095#1072
      OnClick = N3Click
    end
  end
end
