object TranpLog: TTranpLog
  Left = 202
  Top = 163
  Width = 958
  Height = 730
  Caption = 
    #1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1072#1103' '#1051#1086#1075#1080#1089#1090#1080#1082#1072':  "'#1055#1086#1076#1075#1086#1090#1086#1074#1082#1072' '#1088#1077#1096#1077#1085#1080#1103' '#1087#1086' '#1085#1072#1079#1085#1072#1095#1077#1085#1080#1102' '#1090#1088#1072#1085#1089 +
    #1087#1086#1088#1090#1085#1099#1093' '#1089#1088#1077#1076#1089#1090#1074' '#1076#1083#1103' '#1087#1077#1088#1077#1074#1086#1079#1082#1080' '#1075#1088#1091#1079#1086#1074'"  '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  inline Frame41: TFrame4
    Left = 0
    Top = 0
    Width = 942
    Height = 671
    Align = alClient
    Color = clSkyBlue
    ParentColor = False
    TabOrder = 0
    inherited Label1: TLabel
      Left = 24
      Width = 898
    end
  end
  inline Frame21: TFrame2
    Left = 0
    Top = 0
    Width = 942
    Height = 671
    Align = alClient
    TabOrder = 1
    Visible = False
    inherited Label24: TLabel
      Top = 0
    end
    inherited PageControl1: TPageControl
      Width = 929
      Height = 564
      ActivePage = Frame21.TabSheet1
      inherited TabSheet2: TTabSheet
        inherited GroupBox1: TGroupBox
          Height = 209
          inherited Label3: TLabel
            Top = 24
          end
          inherited Label4: TLabel
            Top = 72
          end
          inherited Label5: TLabel
            Top = 160
          end
          inherited Label34: TLabel
            Width = 300
            Caption = #1063#1080#1089#1083#1086' '#1077#1076#1080#1085#1080#1094' '#1075#1088#1091#1079#1072' '#1074' '#1086#1076#1085#1086#1081' '#1040#1052': '
          end
          inherited VEG: TEdit
            Top = 24
            OnChange = Frame21VEGChange
          end
          inherited OEG: TEdit
            Top = 72
            OnChange = Frame21OEGChange
          end
          inherited KEG: TEdit
            Top = 160
          end
        end
        inherited GroupBox2: TGroupBox
          Top = 240
          Height = 281
          inherited MEG: TEdit
            OnChange = Frame21MEGChange
          end
          inherited GAM: TEdit
            OnChange = Frame21GAMChange
          end
          inherited DOG: TEdit
            OnChange = Frame21DOGChange
          end
        end
        inherited GroupBox3: TGroupBox
          Left = 432
          Width = 481
          inherited Label11: TLabel
            Width = 360
          end
          inherited Label12: TLabel
            Top = 80
            Width = 349
            Height = 20
          end
          inherited Label13: TLabel
            Top = 128
            Width = 345
            Height = 20
          end
          inherited RPV: TEdit
            Left = 368
          end
          inherited RAP: TEdit
            Left = 368
            Top = 80
          end
          inherited RAV: TEdit
            Left = 368
            Top = 128
          end
        end
        inherited GroupBox4: TGroupBox
          Top = 192
          Width = 481
          Height = 329
          inherited Label15: TLabel
            Top = 32
            Width = 369
          end
          inherited Label17: TLabel
            Top = 80
            Width = 353
          end
          inherited PZA: TEdit
            Left = 376
            Top = 32
          end
          inherited PVA: TEdit
            Left = 376
            Top = 80
          end
          inherited GroupBox10: TGroupBox
            Top = 120
            Width = 465
            inherited Label28: TLabel
              Caption = #1057#1088#1077#1076#1085#1077#1077' '#1074#1088#1077#1084#1103' '#1087#1086#1075#1088#1091#1079#1082#1080' '#1077#1076#1080#1085#1080#1094#1099' '#1087#1077#1088#1077#1074#1086#1079#1080#1084#1086#1075#1086' '#1075#1088#1091#1079#1072' ('#1055#1045#1043'), '#1095':'
              Enabled = False
            end
            inherited Label18: TLabel
              Width = 345
              Height = 33
              Enabled = False
            end
            inherited PEG: TEdit
              Left = 368
              Enabled = False
              OnChange = Frame21PEGChange
            end
            inherited PAM: TEdit
              Left = 368
              Top = 21
              Color = clWhite
              Enabled = False
              OnChange = Frame21PAMChange
            end
          end
          inherited GroupBox9: TGroupBox
            Top = 224
            Width = 465
            Height = 97
            inherited Label16: TLabel
              Enabled = False
            end
            inherited Label29: TLabel
              Left = 8
              Top = 48
              Height = 41
              Enabled = False
            end
            inherited VAM: TEdit
              Left = 368
              Top = 21
              Enabled = False
              OnChange = Frame21VAMChange
            end
            inherited VEG1: TEdit
              Left = 368
              Top = 61
              Enabled = False
              OnChange = Frame21VEG1Change
            end
          end
        end
      end
      inherited TabSheet3: TTabSheet
        inherited GroupBox5: TGroupBox
          Left = 8
        end
        inherited GroupBox8: TGroupBox
          Left = 440
          Width = 465
          inherited PPE: TEdit
            Left = 336
          end
          inherited VPE: TEdit
            Left = 336
          end
          inherited POE: TEdit
            Left = 336
          end
          inherited VOE: TEdit
            Left = 336
          end
        end
        inherited GroupBox6: TGroupBox
          Left = 8
          Top = 272
          Height = 249
        end
        inherited GroupBox7: TGroupBox
          Top = 272
          Width = 465
          Height = 249
          inherited Label27: TLabel
            Top = 197
            Width = 319
            Caption = #1044#1086#1087#1091#1089#1090#1080#1084#1072#1103' '#1079#1072#1076#1077#1088#1078#1082#1072' '#1088#1077#1083#1072#1082#1089#1072#1094#1080#1080', '#1095':'
          end
          inherited Label26: TLabel
            Top = 40
            Width = 305
            Height = 57
            Caption = 
              #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103' '#1079#1072#1076#1072#1085#1080#1103'                                  ' +
              '                                '
          end
          inherited Label14: TLabel
            Top = 120
          end
          inherited DZR: TEdit
            Left = 328
            Top = 197
            Width = 105
          end
          inherited DNZ: TDateTimePicker
            Left = 320
            Top = 32
            Width = 121
            BevelOuter = bvNone
            Date = 39539.000000000000000000
            Format = 'dd.MM.yyyy'
            Time = 39539.000000000000000000
          end
          inherited IVZ: TEdit
            Left = 320
            Top = 120
            Width = 121
          end
          inherited DateTimePicker1: TDateTimePicker
            Left = 320
            Top = 64
            Date = 38832.958333333300000000
            Format = 'HH : mm'
            Time = 38832.958333333300000000
            Kind = dtkTime
            OnChange = Frame21DateTimePicker1Change
          end
        end
      end
    end
    inherited BitBtn1: TBitBtn
      Left = 224
      Top = 608
      Width = 265
      Height = 41
      Caption = #1054#1073#1100#1105#1084#1085#1086#1077' '#1087#1083#1072#1085#1080#1088#1086#1074#1072#1085#1080#1077
      Font.Height = -16
      OnClick = Frame21BitBtn1Click
      Glyph.Data = {
        CE070000424DCE070000000000003600000028000000170000001B0000000100
        18000000000098070000C40E0000C40E00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FFFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000FFFFFF00000000000000000000000000000001010105050506
        060706060706060807070807070808070908080908080A040405000000000000
        000000000000000000000000000000FFFFFF0000000000000000000000000000
        000A0A0C42424D5856665A58695E5C6E6261736764796C697E716E8377768C40
        3F4B010101000000000000000000000000000000000000FFFFFF000000000000
        09090A33323B3D3C474847548381979B98B4A19DBAA9A6C4AFADCDB7B3D7C0BB
        E1C8C4E9D2CFF6A19EBC676576716F7F45454D010101000000000000000000FF
        FFFF0000000707083A394276748886839C8C8AA38E8DA59592AD9D99B6A4A1BF
        ABA9C8B3AFD1BCB6DBC2BFE3C9C7ECD6D3F6E5E2FEF1EFFFC1C0CB4544490606
        06000000000000FFFFFF0000001313176B6A7B79778C7F7C9386859C8D8CA495
        92AD9D99B6A4A1BFABA9C8B3AFD1BCB6DBC2BFE3CAC7ECD1CEF4DAD7FCE2DDFF
        F0EDFEA09EA6101011000000000000FFFFFF0000001313166A697B79778B7F7C
        9386859C8D8CA49592AD9D99B6A4A1BFABA9C8B3AFD1BCB6DBC2BFE3CAC7ECD1
        CEF4DAD7FCE1DEFFF0ECFFA09DAA100F11000000000000FFFFFF000000131316
        6A697A79778B7F7C9386859C8D8CA49592AD9D99B6A4A1BFABA9C8B3AFD1BCB6
        DBC2BFE3CAC7ECD1CEF4DAD7FCE1DEFFEFECFF9F9CAA100F11000000000000FF
        FFFF0000001313166A697A79778B7F7C9386859C8D8CA49592AD9D99B6A4A1BF
        ABA9C8B3AFD1BCB6DBC2BFE3CAC7ECD1CEF4DAD7FCE1DEFFEFECFF9F9CAA100F
        11000000000000FFFFFF0000001313166A697A79778B7F7C9386859C8D8CA495
        92AD9D99B6A4A1BFABA9C8B3AFD1BCB6DBC2BFE3CAC7ECD1CEF4DAD7FCE1DEFF
        EFECFF9F9CAA100F11000000000000FFFFFF0000001313166A697A79778B7F7C
        9386859C8D8CA49592AD9D99B6A4A1BFABA9C8B3AFD1BCB6DBC2BFE3CAC7ECD1
        CEF4DAD7FCE1DEFFEFECFF9F9CAA100F11000000000000FFFFFF000000131316
        6A697A79778B7F7C9386859C8D8CA49592AD9D99B6A4A1BFABA9C8B3AFD1BCB6
        DBC2BFE3CAC7ECD1CEF4DAD7FCE1DEFFEFECFF9F9CAA100F11000000000000FF
        FFFF0000001313166A697A79778B7F7C9386859C8D8CA49592AD9D99B6A4A1BF
        ABA9C8B3AFD1BCB6DBC2BFE3CAC7ECD1CEF4DAD7FCE1DEFFEFECFF9F9CAA100F
        11000000000000FFFFFF0000001313166A697A79778B7F7C9386859C8D8CA495
        92AD9D99B6A4A1BFABA9C8B3AFD1BCB6DBC2BFE3CAC7ECD1CEF4DAD7FCE1DEFF
        EFECFF9F9CAA100F11000000000000FFFFFF0000001313166A697A79778B7F7C
        9386859C8D8CA49592AD9D99B6A4A1BFABA9C8B3AFD1BCB6DBC2BFE3CAC7ECD1
        CEF4DAD7FCE1DEFFEFECFF9F9CAA100F11000000000000FFFFFF000000131316
        6A697A79778B7F7C9386859C8D8CA49592AD9D99B6A4A1BFABA9C8B3AFD1BCB6
        DBC2BFE3CAC7ECD1CEF4DAD7FCE1DEFFEFECFF9F9CAA100F11000000000000FF
        FFFF0000001313166A697A79778B7E7C9387859D908EA69996B1A09DBAA7A5C3
        AFABCCB7B2D6C0BADFC7C3E8CECBF1D3D0F7DAD7FCE1DEFFEFECFF9F9CAA100F
        11000000000000FFFFFF0000001313166B6A7B7D7B9084819A85839B51505F45
        43514B49594F4D5D5351615755665B596C5F5D70615F729C99B4E7E4FDEAE6FF
        F5F1FF9E9CAA0F0F11000000000000FFFFFF0000001515186563744A49564745
        524C4B5956555D59585D59585E58575D58575D58575D58575E58575C57555B69
        6774828092807E8EB6B4C0A5A3AB111112000000000000FFFFFF0000000C0C0E
        3F3F494F4D554F4E535F5E65D6D3DEF9F6FFF6F2FFF6F2FFF6F2FFF6F2FFF6F2
        FFF6F3FFF9F6FFA8A5AF4A494F4C4B526B697363626A0A0A0B000000000000FF
        FFFF00000009090A57565BD4D3D9EAE8EEE9E6EFEEEBFCF0ECFFF0EDFFF0EDFF
        F0EDFFF0EDFFF0EDFFF0EDFFF0ECFFEDEAF6E8E6ECEAE9EFACAAB12B2A2E0303
        04000000000000FFFFFF0000001F1F22B8B6C3EEEBF7F3F0FFF2EFFFEFECFFEE
        EBFFEEEBFFEEEBFFEEEBFFEEEBFFEEEBFFEEEBFFEEEBFFF0EDFFF3F0FFF3F0FF
        E2DFEB7B7A840C0C0D000000000000FFFFFF000000030304343336B2B0B8C9C7
        CFCBC9D2EBE8F6F4F1FFF4F1FFF4F1FFF4F1FFF4F1FFF4F1FFF4F1FFF4F1FFDF
        DDE8C6C4CCCCCAD288868D111113010101000000000000FFFFFF000000000000
        04030416151719181B2F2E33B2B0BDDBD8E6D6D3E4D6D3E4D6D3E4D6D3E4D6D3
        E4D6D3E4DAD7E67E7D871A191B1A191B0F0F11000000000000000000000000FF
        FFFF0000000000000000000000000000000505051F1E20262629262528262528
        2625282625282625282625282626291414150101010000000000000000000000
        00000000000000FFFFFF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000FFFFFF}
    end
    inherited BitBtn2: TBitBtn
      Left = 8
      Top = 608
      Width = 177
      Height = 41
      OnClick = Frame21BitBtn2Click
      Glyph.Data = {
        760B0000424D760B0000000000003600000028000000200000001E0000000100
        180000000000400B0000C40E0000C40E00000000000000000000F8FBFBE1EEF1
        D6E7EBD8E9ECD8E9ECD7E8EBDAEAEDE4F3F5E9F7F8E9F8F9E9F8F9E9F8F9E9F8
        F9E9F8F9E9F8F9E9F8F9E9F8F9E9F8F9E9F8F9E8F8F9E8F7F8E8F7F8E8F8F9E9
        F8F9E9F8F8E8F8F8E5F5F6DBECEED7E8EBD8E9ECD8E9ECD8E9ECF8FBFBE1EEF1
        D6E7EBD8E9ECD8EAEDDBEDF0D6E7E9B7C3C6A8B2B5A8B3B5A8B4B7A8B6B8A8B6
        B8A8B6B8A8B6B8A8B6B8A8B6B8A8B6B8A8B5B7A5B3B5A3B1B3A4B2B4A6B4B6A8
        B5B7A8B4B5A7B3B5B2C2C3CEDEE1D9EAEDD8E9ECD8E9ECD8E9ECF8FBFBE1EEF1
        D6E7EBD8E9ECD8E9ECD7E9EBB9C9CB5761622A3233272E2E282D2D282B2C282B
        2C282B2C282B2C282B2C282B2C282C2C292C2C2C2F303134353033342C2F2F28
        2D2D272E2E282C2C505657B3C2C4DDEEF1DAEBEED8E9ECD8E9ECF8FBFBE1EEF1
        D6E8EBDAEBEED8E8EBACB7B96373741B494A0242420036360016160002020000
        000000000000000000000000000000000A0A0A3A3A3A6565655E5C5C2F2C2C05
        1313002D2D031A1A323536ABB8BBDEF0F3DAEBEED8E9ECD8E9ECF8FBFBE1EEF1
        D6E8EBDCEDF0D7E7EA858C8D212F2F035959008383006D6D002D2D0005050000
        00000000000000000000000000000000121212707070C3C3C3B4B3B35B575709
        2828005C5C033635323637ABB6B9DEF0F3DAEBEED8E9ECD8E9ECF8FBFBE1EEF1
        D6E8EBDCEDF0D7E7EA7F8486162323005A5A008C8C0075750030300005050000
        00000000000000000000000000000000141414787878D0D0D0C1C0C0625D5D0A
        2A2A006262033A39323737ABB6B9DEF0F3DAEBEED8E9ECD8E9ECF8FBFBE1EEF1
        D6E8EBDCEDF0D7E7EA7F8486162223005857008989007373002F2F0005050000
        00000000000000000000000000000000141414787878D0D0D0C1C0C0615D5D0A
        2A2A005F5F033737323637ABB6B9DEF0F3DAEBEED8E9ECD8E9ECF8FBFBE1EEF1
        D6E8EBDCEDF0D7E7EA7F8486162223005857008989007373002F2F0005050000
        000000000000000000000000000000000E0E0E555252929090888484443F3F07
        2929006161033737323637ABB6B9DEF0F3DAEBEED8E9ECD8E9ECF8FBFBE1EEF1
        D6E8EBDCEDF0D7E7EA7F8486162223005857008888007474003636000E0E000A
        0A000B0B000B0B000B0B000B0B000B0B040E0E1A20202C3131292E2E151A1A02
        2F2F006666033738323637ABB6B9DEF0F3DAEBEED8E9ECD8E9ECF8FBFBE1EEF1
        D6E8EBDCEDF0D7E7EA7F8486162223005757008686007D7D006060004D4D004C
        4C004D4D004D4D004D4D004D4D004D4D004C4C01494901474701474701484800
        5D5D007474033636323637ABB6B9DEF0F3DAEBEED8E9ECD8E9ECF8FBFBE1EEF1
        D6E8EBDCEDF0D7E7EA7F8486162223005858008888008282006B6B005B5B005A
        5A005B5B005B5B005B5B005B5B005B5B005B5B005A5A005858005C5C006F6F00
        8686008080033434323537ABB6B9DEF0F3DAEBEED8E9ECD8E9ECF8FBFBE1EEF1
        D6E8EBDCEDF0D7E7EA7F84861622230058570086860274740642420A22220A20
        200A20200A20200A20200A20200A20200A20200A20200A1F1F09292904555500
        8686008181033535323537ABB6B9DEF0F3DAEBEED8E9ECD8E9ECF8FBFBE1EEF1
        D6E8EBDCEDF0D7E7EA7F84861623230056550068681349494958586E6A6A6F6B
        6B6E6A6A6E6A6A6E6A6A6E6A6A6E6A6A6E6A6A6E6A6A716B6B666666344F4F05
        5353006F6F033737323637ABB6B9DEF0F3DAEBEED8E9ECD8E9ECF8FBFBE1EEF1
        D6E8EBDCEDF0D7E7EA7F8486162424005454005151212E2E817F7FC4C2C2C5C4
        C4C3C2C2C3C2C2C3C2C2C3C2C2C3C2C2C3C2C2C3C2C2C7C6C6B5B3B35E5D5D09
        2F2F006161033737323637ABB6B9DEF0F3DAEBEED8E9ECD8E9ECF8FBFBE1EEF1
        D6E8EBDCEDF0D7E7EA7F8486162424005454004E4E222A2A848181CAC9C9CBCB
        CBC9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9CDCDCDBAB9B9605C5C09
        2A2A005F5F033737323637ABB6B9DEF0F3DAEBEED8E9ECD8E9ECF8FBFBE1EEF1
        D6E8EBDCEDF0D7E7EA7F8486162424005454004E4E212A2A827E7EC7C5C5C8C8
        C8C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6CACACAB7B6B65E5A5A09
        2929006060033838323637ABB6B9DEF0F3DAEBEED8E9ECD8E9ECF8FBFBE1EEF1
        D6E8EBDCEDF0D7E7EA7F8486162424005454004E4E212A2A827E7EC7C5C5C8C8
        C8C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6CACACAB7B6B65E5A5A09
        2A2A006262033939323637ABB6B9DEF0F3DAEBEED8E9ECD8E9ECF8FBFBE1EEF1
        D6E8EBDCEDF0D7E7EA7F8486162424005454004E4E212A2A827E7EC7C5C5C8C8
        C8C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6CACACAB7B6B65E5A5A09
        2828005C5C033636323637ABB6B9DEF0F3DAEBEED8E9ECD8E9ECF8FBFBE1EEF1
        D6E8EBDCEDF0D7E7EA7F8486162424005454004E4E212A2A827E7EC7C5C5C8C8
        C8C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6CACACAB7B6B65E5C5C0A
        1515032727041717323536ABB8BADEF0F3DAEBEED8E9ECD8E9ECF8FBFBE1EEF1
        D6E8EBDCEDF0D7E7EA7F8486162424005656005050222A2A858181CBCACACCCC
        CCCACACACACACACACACACACACACACACACACACACACACACECECEBBBBBB5F5F5F16
        1515292626191717313536AAB8BBDEF0F3DAEBEED8E9ECD8E9ECF8FBFBE1EEF1
        D6E8EBDCEDF0D7E7EA7F8486162323004E4E0049491F27277A7676BABABABBBB
        BBB9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9BDBDBDAAAAAA5454542D
        2C2C6A67673F3D3D333738A8B6B9DDF0F3DAEBEED8E9ECD8E9ECF8FBFBE1EEF1
        D6E8EBDCEDF0D7E7EA80898B191F1F0321210421221215153837375454545554
        545353545353545353545353545353545353545353545555554D4C4C2827271E
        1E1E44434328292935393AABB8BADDEFF2DAEBEED8E9ECD8E9ECF8FBFBE1EEF1
        D6E8EBDBECEFD7E8EB94A0A143474830333433373834373936393A373B3B383B
        3C373B3C373B3C373B3C373B3C373B3C373B3C373B3C383B3C373A3B35393935
        393A363A3B323738575F61B7C4C7DDEEF1D9EAEDD8E9ECD8E9ECF8FBFBE1EEF1
        D6E7EBD8E9ECD7E9ECC9D9DCB7C6C8B3BFC2B4C1C3B3C1C4B2C0C3B0BFC1B1BF
        C2B1BFC2B1BFC2B1BFC2B1BFC2B1BFC2B1BFC2B1BFC2B1BFC2B0BFC1B2C1C4B2
        C1C4B1C0C2B2C0C3BCCBCED0E1E4D9EAEDD8E9ECD8E9ECD8E9ECF8FBFBE1EEF1
        D6E7EBD8E9ECD8E9ECDAECEFDEEFF2DFF0F3DEF0F3DEF0F3DEF0F3DEF0F3DEF0
        F3DEF0F3DEF0F3DEF0F3DEF0F3DEF0F3DEF0F3DEF0F3DEF0F3DEF0F3DEF0F3DE
        F0F3DEF0F3DEF0F3DCEEF1D9EAEDD8E9ECD8E9ECD8E9ECD8E9ECF8FBFBE0EDF0
        D5E6EAD7E8EBD7E8EBD7E8EBD8EAEDD8EAEDD8EAEDD8EAEDD8EAEDD8EAEDD8EA
        EDD8EAEDD8EAEDD8EAEDD8EAEDD8EAEDD8EAEDD8EAEDD8EAEDD8EAEDD8EAEDD8
        EAEDD8EAEDD8EAEDD7E9ECD7E8EBD7E8EBD7E8EBD7E8EBD7E8EBF8FBFBE3EFF1
        D8E8ECDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEA
        EDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDA
        EAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDDAEAEDFCFDFDF2F8F8
        EDF4F6EDF5F6EDF5F6EDF5F6EDF5F6EDF5F6EDF5F6EDF5F6EDF5F6EDF5F6EDF5
        F6EDF5F6EDF5F6EDF5F6EDF5F6EDF5F6EDF5F6EDF5F6EDF5F6EDF5F6EDF5F6ED
        F5F6EDF5F6EDF5F6EDF5F6EDF5F6EDF5F6EDF5F6EDF5F6EDF5F6F6F9FAF5F9FB
        F5F9FAF5F9FAF5F9FAF5F9FAF5F9FAF5F9FAF5F9FAF5F9FAF5F9FAF5F9FAF5F9
        FAF5F9FAF5F9FAF5F9FAF5F9FAF5F9FAF5F9FAF5F9FAF5F9FAF5F9FAF5F9FAF5
        F9FAF5F9FAF5F9FAF5F9FAF5F9FAF5F9FAF5F9FAF5F9FAF5F9FADFEDF0E0EDF0
        E0EDF0E0EDF0E0EDF0E0EDF0E0EDF0E0EDF0E0EDF0E0EDF0E0EDF0E0EDF0E0ED
        F0E0EDF0E0EDF0E0EDF0E0EDF0E0EDF0E0EDF0E0EDF0E0EDF0E0EDF0E0EDF0E0
        EDF0E0EDF0E0EDF0E0EDF0E0EDF0E0EDF0E0EDF0E0EDF0E0EDF0}
    end
    inherited BitBtn3: TBitBtn
      Left = 528
      Top = 608
      Width = 409
      Height = 41
      Caption = #1054#1087#1077#1088#1072#1090#1080#1074#1085#1086' - '#1082#1072#1083#1077#1085#1076#1072#1088#1085#1086#1077' '#1087#1083#1072#1085#1080#1088#1086#1074#1072#1085#1080#1077
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = Frame21BitBtn3Click
      Glyph.Data = {
        060E0000424D060E000000000000360000002800000022000000220000000100
        180000000000D00D0000C40E0000C40E00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        FFFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000FFFF0000000000000000000000000000000B0B0B0E0E0E0E
        0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
        0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
        0E0E0E0E090909010101000000000000FFFF0000000000000000000000000404
        047F7F7FA3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3
        A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3
        A3A3A3A3A3A3A3A3A3A3A3A3696969090909000000000000FFFF000000000000
        000000000000070707C6C6C6FFFFFFA7A7A77E7E7E8080808080808080808080
        8080808080808080808080808080808080808080808080808080808080808080
        8080808080808080808080808080808080BDBDBDA3A3A30E0E0E000000000000
        FFFF000000000000000000000000070707C6C6C6FFFFFF5C5C5C5F5F5F8E8E8E
        8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E
        8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8EC5C5C5A3A3A30E
        0E0E000000000000FFFF000000000000000000000000070707C6C6C6FFFFFF64
        6464AAAAAAFFFFFFFFFFFFFFFFFFFFCBFFFFBBFFFFF9FFFFFFFFFFE6FFFFA9FF
        FFF0FFFFF3FFFFB8FFFFEDFFFFFFFFFFFFFFFFBEFFFFDBFFFFFFFFFFFFFFFFFF
        FFFFFFFFA3A3A30E0E0E000000000000FFFF0000000000000000000000000707
        07C6C6C6FFFFFF646464AAAAAAFFFFFFFFFFFFFFFFFFFFBEFFFF80FFFFB5FFFF
        DFFFFF94FFFF93FFFFECFFFFF0FFFF95FFFF8DFFFFD9FFFFA9FFFF88FFFFD2FF
        FFFFFFFFFFFFFFFFFFFFFFFFA3A3A30E0E0E000000000000FFFF000000000000
        000000000000070707C6C6C6FFFFFF646464AAAAAAFFD2FFFFDBFFFFFFFFFFFF
        FFFFA3FFFF6AFFFFB9FFFF55FFFFFFFFFFFFFFFFFFFFFFD8FFFF2FFFFF7AFFFF
        6BFFFFC8FFFFFFFFFFFFFFFFFFFFFFD9FFFFD4FFA3A3A30E0E0E000000000000
        FFFF000000000000000000000000070707C6C6C6FFFFFF646464AAAAAAFF82FF
        FF9CFFFFFFFFFFFFFFFFC1FFFF7DFFFF94FFFF84FFFFFFFFFFFFFFFFFFFFFFE4
        FFFF6DFFFF39FFFFB6FFFFF9FFFFFFFFFFFDFFFFCFFFFF8CFFFFB0FFA3A3A30E
        0E0E000000000000FFFF000000000000000000000000070707C6C6C6FFFFFF64
        6464AAAAAAFF99FFFF8AFFFFDBFFFFFEFFFFE8FFFF7DFFFF46FFFFE6FFFFFFFF
        FFFFFFFFFFFFFFF5FFFFC5FFFF48FFFFBFFFFFFFFFFFFFFFFFD8FFFF75FFFF94
        FFFFFCFFA3A3A30E0E0E000000000000FFFF0000000000000303031312130C0C
        0CC6C6C6FFFFFF646464AAAAAAFFEAFFFF6FFFFF81FFFFFCFFFFADFFFF34FFFF
        60FFFFC5FFFFFFFFFFFFFFFFF9FFFFBFFFFF68FFFF4FFFFFA2FFFFECFFFFFFFF
        FF87FFFF90FFFFEFFFFFFFFFA3A3A30E0E0E000000000000FFFF000000040404
        1D1C1D5351531B1A1BC6C6C6FFFFFF646464AAAAAAFFF8FFFF6AFFFF71FFFFE6
        FFFF97FFFF7EFFFFC2FFFF6BFFFFDDFFFFF1FFFFC6FFFF6EFFFFD7FFFFDEFFFF
        43FFFFACFFFFE3FFFF7CFFFFA7FFFFFFFFFFFFFFA3A3A30E0E0E000000000000
        FFFF0000001313135C5A5C6462641C1B1CC6C6C6FFFFFF646464AAAAAAFFF9FF
        FF86FFFF76FFFF7CFFFF67FFFFDCFFFFF4FFFFB3FFFF51FFFFB7FFFF4CFFFFBE
        FFFFF9FFFFE8FFFF63FFFF93FFFF7FFFFF9EFFFFEFFFFFFFFFFFFFFFA3A3A30E
        0E0E000000000000FFFF0000001616166A686A6765671C1B1CC6C6C6FFFFFF64
        6464AAAAAAFFFEFFFFEFFFFF8BFFFF1CFFFF6AFFFFF2FFFFFFFFFFC8FFFF3EFF
        FFA3FFFF40FFFFD4FFFFFFFFFFFCFFFFEAFFFF77FFFFA8FFFFF2FFFFFFFFFFFF
        FFFFFFFFA3A3A30E0E0E000000000000FFFF0000001616166A686A6765671C1B
        1CC6C6C6FFFFFF646464AAAAAAFFFFFFFFFFFFFF9EFFFF79FFFFDFFFFFFCFFFF
        FFFFFFF3FFFFB6FFFF7DFFFFC9FFFFF6FFFFFFFFFFFFFFFFFFFFFFE1FFFFEFFF
        FFFFFFFFFFFFFFFFFFFFFFFFA3A3A30E0E0E000000000000FFFF000000161616
        6A686A6765671C1B1CC6C6C6FFFFFF646464AAAAAAFFFFFFFFFFFFFFE9FFFFE6
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FFFFDEFFFFFBFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3A3A30E0E0E000000000000
        FFFF0000001616166A686A6765671B1A1BB2B2B2E6E6E6C2C2C2D2D2D2E6E6E6
        E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
        E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E69393930D
        0D0D000000000000FFFF0000001616166A686A67656717161737373746464646
        4646464646464646464646464646464646464646464646464646464646464646
        4646464646464646464646464646464646464646464646464646464646464646
        464646462D2D2D040404000000000000FFFF0000001616166A686A7472745B5A
        5B5957595E5C5E6362636866686C6A6C7270727674767C7A7C807F808684868A
        888A8F8D8F9492949996998C8A8C1D1D1D000000000000000000000000000000
        000000000000000000000000000000000000000000000000FFFF000000161616
        6A686A7B797B8381838B898B9290929A989AA29FA2A9A6A9B2AFB2B8B5B8C1BE
        C1C9C6C9D1CED1D8D5D8DFDCDFE8E4E8EFEBEFDBD8DB2D2C2D00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        FFFF0000001616166A686A7B797B8381838B898B9290929A989AA29FA2A9A6A9
        B2AFB2B8B5B8C1BEC1C9C6C9D1CED1D8D5D8DFDCDFE8E4E8EFEBEFDBD8DB2D2C
        2D00000000000000000000000000000000000000000000000000000000000000
        0000000000000000FFFF0000001616166A686A7B797B8381838B898B9290929A
        989AA29FA2A9A6A9B2AFB2B8B5B8C1BEC1C9C6C9D1CED1D8D5D8DFDCDFE8E4E8
        EFEBEFDBD8DB2D2C2D0000000000000000000000000000000000000000000000
        00000000000000000000000000000000FFFF0000001616166A686A7B797B8381
        838B898B9290929A989AA29FA2A9A6A9B2AFB2B8B5B8C1BEC1C9C6C9D1CED1D8
        D5D8DFDCDFE8E4E8EFEBEFDBD8DB2D2C2D000000000000000000000000000000
        000000000000000000000000000000000000000000000000FFFF000000161616
        6A686A7B797B8381838B898B9290929A989AA29FA2A9A6A9B2AFB2B8B5B8C1BE
        C1C9C6C9D1CED1D8D5D8DFDCDFE8E4E8EFEBEFDBD8DB2D2C2D00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        FFFF0000001616166A686A7B797B8381838583856D6B6D6665666C6A6C706E70
        7674767A787A807E808684868B898BA4A2A4D8D5D8E8E4E8EFEBEFDBD8DB2D2C
        2D00000000000000000000000000000000000000000000000000000000000000
        0000000000000000FFFF0000001616166664665A595A5957595D5C5D5B595B5A
        595A5B595B5B5A5B5C5A5C5C5B5C5D5B5D5D5C5D5E5D5E6E6C6E9290929D9B9D
        B2AFB2D4D1D42D2C2D0000000000000000000000000000000000000000000000
        00000000000000000000000000000000FFFF0000001111114C4B4C4241423E3D
        3E525152C8C5C8F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7C4
        C1C4504F503E3D3E5654569A989A222122000000000000000000000000000000
        000000000000000000000000000000000000000000000000FFFF0000000D0D0D
        4F4E4FC0BDC0DCD8DCDFDBDFF0ECF0F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3
        F7F7F3F7F7F3F7F0ECF0DEDBDEDCD8DCC2BEC25554550F0F0F00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        FFFF000000272627BBB9BBEEEAEEF7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7
        F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7EEEAEEB5B2B52424
        2400000000000000000000000000000000000000000000000000000000000000
        0000000000000000FFFF000000070707343434ACA9ACCAC7CACFCBCFECE8ECF7
        F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7F7F3F7EBE7EBCECBCECAC7CA
        ABA8AB2F2F2F0707070000000000000000000000000000000000000000000000
        00000000000000000000000000000000FFFF0000000000000303031616161B1B
        1B313131B0AEB0E2DFE2E2DFE2E2DFE2E2DFE2E2DFE2E2DFE2E2DFE2E2DFE2AC
        A9AC2F2E2F1B1B1B161616020202000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000FFFF000000000000
        000000000000000000050505242424302F30302F30302F30302F30302F30302F
        30302F30302F3023222305050500000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        FFFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000FFFF}
    end
  end
  object MainMenu1: TMainMenu
    Left = 40
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N4: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N4Click
      end
      object TMenuItem
      end
    end
    object N2: TMenuItem
      Caption = #1053#1086#1074#1086#1077' '#1079#1072#1076#1072#1085#1080#1077
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1079#1072#1076#1072#1085#1080#1077
      OnClick = N3Click
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 72
  end
  object SaveDialog1: TSaveDialog
    Left = 8
  end
end
