object RelatorioQualificacao: TRelatorioQualificacao
  Left = 891
  Top = -77
  Caption = 'Resumo Geral'
  ClientHeight = 593
  ClientWidth = 827
  Color = cl3DLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Courier New'
  Font.Style = []
  OldCreateOrder = True
  Position = poDesigned
  Scaled = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  object QR: TQuickRep
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    ShowingPreview = False
    BeforePrint = QRBeforePrint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    OnNeedData = QRNeedData
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      50.000000000000000000
      2970.000000000000000000
      50.000000000000000000
      2100.000000000000000000
      40.000000000000000000
      40.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = First
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = False
    ReportTitle = 'SlotChrono DOC'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PreviewWidth = 5000
    PreviewHeight = 5000
    PrevInitialZoom = qrZoom100
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object DetailBand1: TQRBand
      Left = 15
      Top = 111
      Width = 764
      Height = 32
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        84.666666666666670000
        2021.416666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = True
      BandType = rbDetail
      object QRClassificacao: TQRLabel
        Left = 0
        Top = 0
        Width = 61
        Height = 32
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          84.666666666666670000
          0.000000000000000000
          0.000000000000000000
          161.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Pos'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object QRPiloto: TQRLabel
        Left = 60
        Top = 0
        Width = 201
        Height = 32
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          84.666666666666670000
          158.750000000000000000
          0.000000000000000000
          531.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Piloto Piloto Piloto'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object QRVoltas: TQRLabel
        Left = 260
        Top = 0
        Width = 79
        Height = 32
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          84.666666666666670000
          687.916666666666700000
          0.000000000000000000
          209.020833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Voltas'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object QRDiferenca: TQRLabel
        Left = 338
        Top = 0
        Width = 105
        Height = 32
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          84.666666666666670000
          894.291666666666700000
          0.000000000000000000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Diferen'#231'a'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object ImgClassificacao: TQRImage
        Left = 1
        Top = 3
        Width = 24
        Height = 24
        Size.Values = (
          63.500000000000000000
          2.645833333333333000
          7.937500000000000000
          63.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
      end
      object QRFenda: TQRLabel
        Left = 442
        Top = 0
        Width = 115
        Height = 32
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          84.666666666666670000
          1169.458333333333000000
          0.000000000000000000
          304.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0 Fenda '
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object QRMelhorVolta: TQRLabel
        Left = 556
        Top = 0
        Width = 207
        Height = 32
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          84.666666666666670000
          1471.083333333333000000
          0.000000000000000000
          547.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '0,0000'
        Color = clWhite
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object SFenda: TQRShape
        Left = 448
        Top = 8
        Width = 23
        Height = 15
        Size.Values = (
          39.687500000000000000
          1185.333333333333000000
          21.166666666666670000
          60.854166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 15
      Top = 19
      Width = 764
      Height = 66
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        174.625000000000000000
        2021.416666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object LabelTitulo: TQRLabel
        Left = 182
        Top = 1
        Width = 497
        Height = 28
        Size.Values = (
          74.083333333333330000
          481.541666666666700000
          2.645833333333333000
          1314.979166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Qualifica'#231#227'o'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 14
      end
      object LabelPeriodo: TQRLabel
        Left = 182
        Top = 32
        Width = 497
        Height = 28
        Size.Values = (
          74.083333333333330000
          481.541666666666700000
          84.666666666666670000
          1314.979166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '(Per'#237'odo)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object LabelLoja: TQRLabel
        Left = 0
        Top = 1
        Width = 179
        Height = 59
        Size.Values = (
          156.104166666666700000
          0.000000000000000000
          2.645833333333333000
          473.604166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Loja'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 14
      end
      object QRLogo: TQRImage
        Left = 682
        Top = 1
        Width = 80
        Height = 60
        Size.Values = (
          158.750000000000000000
          1804.458333333333000000
          2.645833333333333000
          211.666666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = True
        Center = True
        Stretch = True
      end
    end
    object ColumnHeaderBand1: TQRBand
      Left = 15
      Top = 85
      Width = 764
      Height = 26
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        68.791666666666670000
        2021.416666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel15: TQRLabel
        Left = 0
        Top = 0
        Width = 61
        Height = 26
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          68.791666666666670000
          0.000000000000000000
          0.000000000000000000
          161.395833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Posi'#231#227'o'
        Color = 14342874
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object QRLabel5: TQRLabel
        Left = 60
        Top = 0
        Width = 201
        Height = 26
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          68.791666666666670000
          158.750000000000000000
          0.000000000000000000
          531.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Piloto'
        Color = 14342874
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object QRLabel9: TQRLabel
        Left = 260
        Top = 0
        Width = 79
        Height = 26
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          68.791666666666670000
          687.916666666666700000
          0.000000000000000000
          209.020833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Voltas'
        Color = 14342874
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object Diferenca: TQRLabel
        Left = 338
        Top = 0
        Width = 105
        Height = 26
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          68.791666666666670000
          894.291666666666700000
          0.000000000000000000
          277.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Diferen'#231'a'
        Color = 14342874
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object QRLabel3: TQRLabel
        Left = 442
        Top = 0
        Width = 115
        Height = 26
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          68.791666666666670000
          1169.458333333333000000
          0.000000000000000000
          304.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Fenda'
        Color = 14342874
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 556
        Top = 0
        Width = 207
        Height = 26
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          68.791666666666670000
          1471.083333333333000000
          0.000000000000000000
          547.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Melhor Volta'
        Color = 14342874
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object QRHRule1: TQRHRule
        Left = 0
        Top = 24
        Width = 764
        Height = 3
        Size.Values = (
          7.937500000000000000
          0.000000000000000000
          63.500000000000000000
          2021.416666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        VertAdjust = 0
        Brush.Style = bsClear
        Pen.Color = 131586
        Pen.Width = 2
      end
    end
    object PageFooterBand1: TQRBand
      Left = 15
      Top = 143
      Width = 764
      Height = 28
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        74.083333333333330000
        2021.416666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRSysData2: TQRSysData
        Left = 602
        Top = 6
        Width = 162
        Height = 15
        Size.Values = (
          39.687500000000000000
          1592.791666666667000000
          15.875000000000000000
          428.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = True
        Color = clWhite
        Data = qrsDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Text = 'Impresso em '
        Transparent = False
        ExportAs = exptText
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRSysData1: TQRSysData
        Left = 0
        Top = 6
        Width = 120
        Height = 15
        Size.Values = (
          39.687500000000000000
          0.000000000000000000
          15.875000000000000000
          317.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = True
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Text = 'P'#225'gina :  '
        Transparent = True
        ExportAs = exptText
        VerticalAlignment = tlTop
        FontSize = 8
      end
    end
  end
  object M1: TQRImage
    Left = 800
    Top = 8
    Width = 24
    Height = 24
    Size.Values = (
      63.500000000000000000
      2116.666666666667000000
      21.166666666666670000
      63.500000000000000000)
    XLColumn = 0
    XLNumFormat = nfGeneral
    ActiveInPreview = False
    Picture.Data = {
      07544269746D6170F6060000424DF60600000000000036000000280000001800
      0000180000000100180000000000C00600000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      EAEDEECAD5D9CAD5D9EAEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFB7CED65CBDDF31B8E92FBAEE30B9EE30B4E859B9DFB6CDD6FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFAFAFB7ABFD632C1EF31CAFB31C9FB30C8FB30C6FB2FC4FB2EC2FA2F
      B7EE78BCD7FAFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF7FC2D532CAF533CFFC31CFFC2ECBFC2DC9FC2DC7
      FC2CC5FC2DC3FB2EC3FB2DBCF47DBDD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2D5D935C8EE33D4FD34D4FC33D3FD
      12B2FE08A8FE019FFE08A8FE12AFFD2FC7FB2EC4FB2FB7ECC2D4DBFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6DC6DB36D8FC36
      D9FD36D9FD36D8FD35D7FC33D4FD019FFE31CFFC32CEFC31CAFB30C7FB2FC3FA
      6ABCDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFC
      FC3ECBE836DDFD36DDFE37DEFD36DDFD36DCFD33D8FD019FFE32D3FD33D1FC31
      CEFC30CAFC30C6FB37B6E6FBFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE6EAEA39D1EC38E1FE38E2FE39E2FD38E2FE37E0FE35DCFE019F
      FE33D6FD34D5FC32D1FC31CDFC31C9FB30B9EAE6EAEBFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE9EDED3AD5EC3AE6FE3AE7FE3AE7FE3AE6FE
      3AE4FE37E0FE019FFE35D9FD35D8FD34D4FC33CFFC31CBFB32BAEAE9EDEEFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE49D6E83AEAFF3B
      EAFF3BEAFE3AEAFF3AE8FF37E3FE019FFE35DCFE36DAFD34D6FD32D2FC32CDFC
      41BCE6FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF81CED73BE9FD3BEBFF3BEAFE3BEBFF23CDFF2BD6FF019FFE36DFFE37DCFD34
      D8FD33D3FD33CDFA7EC2D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFDDE5E640D9EB3BEBFF3BEAFE3BEBFF1CC3FF0EB2FF09AB
      FE36E1FE37DEFD35D9FD33D5FD39C2E9DCE4E7FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9D3D83CDEF03BEAFE3BEAFE
      3BEAFE3BEAFE3BE8FE39E4FE38DFFD36DAFD36CAEEA7CED9FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF51
      CDE33CD7EA3BE7FB3BEBFF3BEBFF3BE9FE38E4FE38DCFA36C9E84FC7E2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF4ECFEC51D0EA8FCDD45BD9E740D8E93FD5E95AD4E68EC9D450
      CEE94ECFECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FCFED4BCBE1CAA676CFAB78D2B885D2B7
      83CFAA75BBAA823ED0F24FCFEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5ECEE89AA980F09C33
      F39C2EF39A2AF29827E490255EC2C435D8FD5ECFE9FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4
      C8BEE49A3EF3A13AF39F36F39D32F09A2EB88B446CA3986E9F92BABEB6FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFF9F9F8DBA561F4A544F4A43FF4A23BF4A037DC9034C86F19C86D17C8
      6C17BD7837F5F4F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFD0BA9FEEA64DF4A84AF4A745F4A541EA9D3ECB7D
      28CD7118CD7219CD7118C86F19C4A281FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E2DFE2A65AF5AD55F4AB51F4A94D
      F3A749DBA96CC5915DD0761AD2771AD2771AD2771AC47221DFD9D3FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2AE82F4B15EF5
      B05AF5AE57F5AC52E3A250E4DFD8E6E2DEC87927D67B1BD67A1AD67A1AD57B1B
      C38B51FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC5
      B9EBAE62F6B463F6B360F5B15DEFAB57D7BB9AFFFFFFFFFFFFCCAF90D57D1EDB
      7F1BDB7F1BDB801CD37C1DC9B6A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE0DCD7DAD4CBDAD4CBDAD4CBDAD3CAD8D2CAF7F7F7FFFFFFFFFF
      FFFAF9F9D6CDC3D8CEC3D8CEC3D8CEC3D8CEC3DDD7D0FFFFFFFFFFFFFFFFFFFF
      FFFF}
  end
end
