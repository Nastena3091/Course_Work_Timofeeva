object Form1: TForm1
  Left = 423
  Top = 43
  Width = 919
  Height = 541
  Caption = #1044#1086#1074#1110#1076#1085#1080#1082
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl16: TLabel
    Left = 16
    Top = 48
    Width = 139
    Height = 13
    Caption = #1055#1086#1096#1091#1082' '#1079#1072' '#1082#1086#1076#1086#1084' '#1085#1072#1082#1083#1072#1076#1085#1086#1111':'
  end
  object lbl20: TLabel
    Left = 480
    Top = 464
    Width = 183
    Height = 13
    Caption = #1055#1086#1096#1091#1082' '#1087#1088#1086#1076#1072#1078#1091' '#1079#1072' '#1085#1072#1079#1074#1086#1102' '#1082#1086#1084#1087#1072#1085#1110#1111':'
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 903
    Height = 502
    ActivePage = ts1
    Align = alClient
    TabOrder = 0
    object ts1: TTabSheet
      Caption = #1058#1086#1074#1072#1088
      object dbgrd1: TDBGrid
        Left = 0
        Top = 0
        Width = 895
        Height = 312
        Align = alClient
        Color = clInfoBk
        DataSource = DataModule2.dsTovar
        FixedColor = clYellow
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object pnl1: TPanel
        Left = 0
        Top = 312
        Width = 895
        Height = 81
        Align = alBottom
        Color = clMoneyGreen
        Locked = True
        TabOrder = 1
        Visible = False
        object lbl1: TLabel
          Left = 384
          Top = 16
          Width = 119
          Height = 13
          Caption = #1055#1086#1096#1091#1082' '#1090#1086#1074#1072#1088#1091' '#1087#1086' '#1085#1072#1079#1074#1110':'
        end
        object lbl2: TLabel
          Left = 384
          Top = 48
          Width = 124
          Height = 13
          Caption = #1055#1086#1096#1091#1082' '#1079#1072' '#1082#1086#1076#1086#1084' '#1090#1086#1074#1072#1088#1091':'
        end
        object btn1: TButton
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080
          TabOrder = 0
          OnClick = btn1Click
        end
        object btn2: TButton
          Left = 88
          Top = 8
          Width = 75
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080
          TabOrder = 1
          OnClick = btn2Click
        end
        object btn3: TButton
          Left = 168
          Top = 8
          Width = 75
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 2
          OnClick = btn3Click
        end
        object btn4: TButton
          Left = 248
          Top = 8
          Width = 75
          Height = 25
          Caption = #1047#1074#1110#1090
          TabOrder = 3
          OnClick = btn4Click
        end
        object edt11: TEdit
          Left = 528
          Top = 8
          Width = 281
          Height = 21
          TabOrder = 4
          OnChange = edt11Change
        end
        object edt1: TEdit
          Left = 528
          Top = 40
          Width = 81
          Height = 21
          TabOrder = 5
        end
        object btn9: TButton
          Left = 664
          Top = 40
          Width = 75
          Height = 25
          Caption = #1054#1050
          TabOrder = 6
          OnClick = btn9Click
        end
      end
      object pnl5: TPanel
        Left = 0
        Top = 393
        Width = 895
        Height = 81
        Align = alBottom
        Color = clMoneyGreen
        Locked = True
        TabOrder = 2
        Visible = False
        object lbl3: TLabel
          Left = 8
          Top = 24
          Width = 30
          Height = 13
          Caption = #1053#1072#1079#1074#1072
        end
        object lbl4: TLabel
          Left = 208
          Top = 24
          Width = 22
          Height = 13
          Caption = #1062#1110#1085#1072
        end
        object edt2: TEdit
          Left = 48
          Top = 16
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object edt3: TEdit
          Left = 240
          Top = 16
          Width = 121
          Height = 21
          TabOrder = 1
        end
        object btn19: TButton
          Left = 496
          Top = 16
          Width = 107
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080' '#1079#1072#1087#1080#1089
          TabOrder = 2
          OnClick = btn19Click
        end
        object btn20: TButton
          Left = 496
          Top = 48
          Width = 107
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080' '#1079#1072#1087#1080#1089
          TabOrder = 3
          OnClick = btn20Click
        end
        object btn21: TButton
          Left = 696
          Top = 32
          Width = 75
          Height = 25
          Caption = #1042#1110#1076#1084#1110#1085#1072
          TabOrder = 4
          OnClick = btn21Click
        end
      end
    end
    object ts2: TTabSheet
      Caption = #1050#1083#1110#1108#1085#1090#1080
      ImageIndex = 1
      object dbgrd2: TDBGrid
        Left = 0
        Top = 0
        Width = 895
        Height = 312
        Align = alClient
        Color = clInfoBk
        DataSource = DataModule2.dsClient
        FixedColor = clYellow
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object pnl3: TPanel
        Left = 0
        Top = 312
        Width = 895
        Height = 81
        Align = alBottom
        Color = clMoneyGreen
        Locked = True
        TabOrder = 1
        Visible = False
        object lbl5: TLabel
          Left = 384
          Top = 16
          Width = 120
          Height = 13
          Caption = #1055#1086#1096#1091#1082' '#1082#1083#1110#1108#1085#1090#1091' '#1087#1086' '#1085#1072#1079#1074#1110':'
        end
        object lbl6: TLabel
          Left = 384
          Top = 48
          Width = 131
          Height = 13
          Caption = #1055#1086#1096#1091#1082' '#1087#1086' '#1085#1086#1084#1077#1088#1091' '#1082#1083#1110#1108#1085#1090#1072':'
        end
        object btn13: TButton
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080
          TabOrder = 0
          OnClick = btn13Click
        end
        object btn14: TButton
          Left = 88
          Top = 8
          Width = 75
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080
          TabOrder = 1
          OnClick = btn14Click
        end
        object btn15: TButton
          Left = 168
          Top = 8
          Width = 75
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 2
          OnClick = btn15Click
        end
        object btn16: TButton
          Left = 248
          Top = 8
          Width = 75
          Height = 25
          Caption = #1047#1074#1110#1090
          TabOrder = 3
          OnClick = btn16Click
        end
        object edt10: TEdit
          Left = 528
          Top = 8
          Width = 281
          Height = 21
          TabOrder = 4
          OnChange = edt10Change
        end
        object edt4: TEdit
          Left = 528
          Top = 40
          Width = 81
          Height = 21
          TabOrder = 5
        end
        object btn22: TButton
          Left = 648
          Top = 40
          Width = 75
          Height = 25
          Caption = #1054#1050
          TabOrder = 6
          OnClick = btn22Click
        end
      end
      object pnl6: TPanel
        Left = 0
        Top = 393
        Width = 895
        Height = 81
        Align = alBottom
        Color = clMoneyGreen
        Locked = True
        TabOrder = 2
        Visible = False
        object lbl7: TLabel
          Left = 8
          Top = 16
          Width = 30
          Height = 13
          Caption = #1053#1072#1079#1074#1072
        end
        object lbl8: TLabel
          Left = 208
          Top = 16
          Width = 17
          Height = 13
          Caption = #1055#1030#1041
        end
        object lbl17: TLabel
          Left = 8
          Top = 48
          Width = 44
          Height = 13
          Caption = #1058#1077#1083#1077#1092#1086#1085
        end
        object lbl18: TLabel
          Left = 208
          Top = 48
          Width = 37
          Height = 13
          Caption = #1040#1076#1088#1077#1089#1072
        end
        object edt5: TEdit
          Left = 56
          Top = 8
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object edt6: TEdit
          Left = 248
          Top = 8
          Width = 225
          Height = 21
          TabOrder = 1
        end
        object btn24: TButton
          Left = 496
          Top = 16
          Width = 107
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080' '#1079#1072#1087#1080#1089
          TabOrder = 2
          OnClick = btn24Click
        end
        object btn25: TButton
          Left = 496
          Top = 48
          Width = 107
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080' '#1079#1072#1087#1080#1089
          TabOrder = 3
          OnClick = btn25Click
        end
        object btn26: TButton
          Left = 696
          Top = 32
          Width = 75
          Height = 25
          Caption = #1042#1110#1076#1084#1110#1085#1072
          TabOrder = 4
          OnClick = btn26Click
        end
        object edt13: TEdit
          Left = 248
          Top = 40
          Width = 225
          Height = 21
          TabOrder = 5
        end
        object edt14: TEdit
          Left = 56
          Top = 40
          Width = 121
          Height = 21
          TabOrder = 6
        end
      end
    end
    object ts3: TTabSheet
      Caption = #1055#1088#1072#1094#1110#1074#1085#1080#1082#1080
      ImageIndex = 2
      object dbgrd3: TDBGrid
        Left = 0
        Top = 0
        Width = 895
        Height = 312
        Align = alClient
        Color = clInfoBk
        DataSource = DataModule2.dsWorker
        FixedColor = clYellow
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object pnl2: TPanel
        Left = 0
        Top = 393
        Width = 895
        Height = 81
        Align = alBottom
        Color = clMoneyGreen
        Locked = True
        TabOrder = 1
        Visible = False
        object lbl9: TLabel
          Left = 8
          Top = 24
          Width = 44
          Height = 13
          Caption = #1058#1077#1083#1077#1092#1086#1085
        end
        object lbl10: TLabel
          Left = 8
          Top = 56
          Width = 17
          Height = 13
          Caption = #1055#1030#1041
        end
        object edt7: TEdit
          Left = 56
          Top = 16
          Width = 225
          Height = 21
          TabOrder = 0
        end
        object edt8: TEdit
          Left = 56
          Top = 48
          Width = 225
          Height = 21
          TabOrder = 1
        end
        object btn5: TButton
          Left = 496
          Top = 16
          Width = 107
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080' '#1079#1072#1087#1080#1089
          TabOrder = 2
          OnClick = btn5Click
        end
        object btn6: TButton
          Left = 496
          Top = 48
          Width = 107
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080' '#1079#1072#1087#1080#1089
          TabOrder = 3
          OnClick = btn6Click
        end
        object btn7: TButton
          Left = 696
          Top = 32
          Width = 75
          Height = 25
          Caption = #1042#1110#1076#1084#1110#1085#1072
          TabOrder = 4
          OnClick = btn7Click
        end
      end
      object pnl7: TPanel
        Left = 0
        Top = 312
        Width = 895
        Height = 81
        Align = alBottom
        Color = clMoneyGreen
        Locked = True
        TabOrder = 2
        Visible = False
        object lbl11: TLabel
          Left = 368
          Top = 16
          Width = 131
          Height = 13
          Caption = #1055#1086#1096#1091#1082' '#1087#1088#1072#1094#1110#1074#1085#1080#1082#1072' '#1087#1086' '#1055#1030#1041':'
        end
        object lbl12: TLabel
          Left = 368
          Top = 48
          Width = 154
          Height = 13
          Caption = #1055#1086#1096#1091#1082' '#1087#1086' '#1090#1072#1073#1077#1083#1100#1085#1086#1084#1091' '#1085#1086#1084#1077#1088#1091':'
        end
        object btn8: TButton
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080
          TabOrder = 0
          OnClick = btn8Click
        end
        object btn27: TButton
          Left = 88
          Top = 8
          Width = 75
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080
          TabOrder = 1
          OnClick = btn27Click
        end
        object btn28: TButton
          Left = 168
          Top = 8
          Width = 75
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 2
          OnClick = btn28Click
        end
        object btn29: TButton
          Left = 248
          Top = 8
          Width = 75
          Height = 25
          Caption = #1047#1074#1110#1090
          TabOrder = 3
          OnClick = btn29Click
        end
        object edt12: TEdit
          Left = 528
          Top = 8
          Width = 281
          Height = 21
          TabOrder = 4
          OnChange = edt12Change
        end
        object edt9: TEdit
          Left = 528
          Top = 40
          Width = 81
          Height = 21
          TabOrder = 5
        end
        object btn30: TButton
          Left = 648
          Top = 40
          Width = 75
          Height = 25
          Caption = #1054#1050
          TabOrder = 6
          OnClick = btn30Click
        end
      end
    end
    object ts4: TTabSheet
      Caption = #1055#1088#1086#1076#1072#1078#1072
      ImageIndex = 3
      object dbgrd4: TDBGrid
        Left = 0
        Top = 0
        Width = 895
        Height = 474
        Align = alClient
        Color = clInfoBk
        DataSource = DataModule2.dsProdag
        FixedColor = clYellow
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object ts5: TTabSheet
      Caption = #1053#1072#1082#1083#1072#1076#1085#1072
      ImageIndex = 4
      object dbgrd5: TDBGrid
        Left = 0
        Top = 0
        Width = 895
        Height = 474
        Align = alClient
        Color = clInfoBk
        DataSource = DataModule2.dsNakladna
        FixedColor = clYellow
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
end
