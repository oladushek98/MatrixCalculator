object fmCalculator: TfmCalculator
  Left = 909
  Top = 102
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088
  ClientHeight = 378
  ClientWidth = 490
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  DesignSize = (
    490
    378)
  PixelsPerInch = 96
  TextHeight = 13
  object EPoleEnter: TEdit
    Left = 12
    Top = 16
    Width = 221
    Height = 36
    Anchors = [akTop, akRight]
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Text = '0'
  end
  object B1: TButton
    Left = 16
    Top = 208
    Width = 49
    Height = 41
    Caption = '1'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = B1Click
  end
  object B2: TButton
    Left = 72
    Top = 208
    Width = 49
    Height = 41
    Caption = '2'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = B2Click
  end
  object B3: TButton
    Left = 128
    Top = 208
    Width = 49
    Height = 41
    Caption = '3'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = B3Click
  end
  object B4: TButton
    Left = 16
    Top = 160
    Width = 49
    Height = 41
    Caption = '4'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = B4Click
  end
  object B5: TButton
    Left = 72
    Top = 160
    Width = 49
    Height = 41
    Caption = '5'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = B5Click
  end
  object B6: TButton
    Left = 128
    Top = 160
    Width = 49
    Height = 41
    Caption = '6'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = B6Click
  end
  object B7: TButton
    Left = 16
    Top = 112
    Width = 49
    Height = 41
    Caption = '7'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = B7Click
  end
  object B8: TButton
    Left = 72
    Top = 112
    Width = 49
    Height = 41
    Caption = '8'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = B8Click
  end
  object B9: TButton
    Left = 128
    Top = 112
    Width = 49
    Height = 41
    Caption = '9'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = B9Click
  end
  object b0: TButton
    Left = 72
    Top = 256
    Width = 49
    Height = 41
    Caption = '0'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = b0Click
  end
  object BC: TButton
    Left = 16
    Top = 256
    Width = 49
    Height = 41
    Caption = '&c'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = BCClick
  end
  object BPoint: TButton
    Left = 128
    Top = 256
    Width = 49
    Height = 41
    Caption = ','
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnClick = BPointClick
  end
  object BEnter: TButton
    Left = 184
    Top = 208
    Width = 49
    Height = 89
    Caption = '='
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    OnClick = BEnterClick
  end
  object BDiv: TButton
    Left = 184
    Top = 160
    Width = 49
    Height = 41
    Caption = '/'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
    OnClick = BDivClick
  end
  object BMultiply: TButton
    Left = 184
    Top = 112
    Width = 49
    Height = 41
    Caption = '*'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    OnClick = BMultiplyClick
  end
  object BMinus: TButton
    Left = 184
    Top = 64
    Width = 49
    Height = 41
    Caption = '-'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
    OnClick = BMinusClick
  end
  object BPlus: TButton
    Left = 128
    Top = 64
    Width = 49
    Height = 41
    Caption = '+'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
    OnClick = BPlusClick
  end
  object BSign: TButton
    Left = 72
    Top = 64
    Width = 49
    Height = 41
    Caption = '+/-'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
    OnClick = BSignClick
  end
  object BAddList: TButton
    Left = 16
    Top = 64
    Width = 49
    Height = 41
    Caption = '&A'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 19
    OnClick = BAddListClick
  end
  object ListBox1: TListBox
    Left = 280
    Top = 72
    Width = 185
    Height = 225
    ItemHeight = 13
    TabOrder = 20
    OnClick = ListBox1Click
  end
  object BDelete: TButton
    Left = 312
    Top = 312
    Width = 129
    Height = 33
    Caption = '&O'#1095#1080#1089#1090#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 21
    OnClick = BDeleteClick
  end
  object RadioButton1: TRadioButton
    Left = 304
    Top = 8
    Width = 113
    Height = 17
    Caption = #1059#1076#1072#1083#1077#1080#1077
    TabOrder = 22
  end
  object RadioButton2: TRadioButton
    Left = 304
    Top = 32
    Width = 113
    Height = 17
    Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
    TabOrder = 23
  end
end
