object RelatorioCorrida: TRelatorioCorrida
  Left = 891
  Top = -77
  Caption = 'Resumo Geral'
  ClientHeight = 1053
  ClientWidth = 1160
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
    Width = 1123
    Height = 794
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
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      50.000000000000000000
      2100.000000000000000000
      50.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      100.000000000000000000
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
      Left = 38
      Top = 111
      Width = 1047
      Height = 32
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        84.666666666666670000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = True
      BandType = rbDetail
      object QRVoltas: TQRLabel
        Left = 157
        Top = 0
        Width = 44
        Height = 32
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          84.666666666666670000
          415.395833333333300000
          0.000000000000000000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Voltas'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object QRPiloto: TQRLabel
        Left = 54
        Top = 0
        Width = 103
        Height = 32
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          84.666666666666670000
          142.875000000000000000
          0.000000000000000000
          272.520833333333300000)
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
      object QRClassificacao: TQRLabel
        Left = 0
        Top = 0
        Width = 54
        Height = 32
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          84.666666666666670000
          0.000000000000000000
          0.000000000000000000
          142.875000000000000000)
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
      object QRZona: TQRLabel
        Left = 201
        Top = 0
        Width = 36
        Height = 32
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          84.666666666666670000
          531.812500000000000000
          0.000000000000000000
          95.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Zona'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object QRMedia: TQRLabel
        Left = 237
        Top = 0
        Width = 40
        Height = 32
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          84.666666666666670000
          627.062500000000000000
          0.000000000000000000
          105.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'M'#233'dia'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object QRDiferenca: TQRLabel
        Left = 277
        Top = 0
        Width = 54
        Height = 32
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          84.666666666666670000
          732.895833333333300000
          0.000000000000000000
          142.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Dif.'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object QRMelhorVolta: TQRLabel
        Left = 330
        Top = 0
        Width = 125
        Height = 32
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          84.666666666666670000
          873.125000000000000000
          0.000000000000000000
          330.729166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = '0,0000 '
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object Pista1Voltas: TQRLabel
        Left = 455
        Top = 0
        Width = 74
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          42.333333333333330000
          1203.854166666667000000
          0.000000000000000000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Voltas'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object Pista1Melhor: TQRLabel
        Left = 455
        Top = 16
        Width = 74
        Height = 16
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          42.333333333333330000
          1203.854166666667000000
          42.333333333333330000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Melhor'
        Color = clWhite
        Transparent = False
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
      object MelhorFenda: TQRShape
        Left = 335
        Top = 8
        Width = 64
        Height = 15
        Size.Values = (
          39.687500000000000000
          886.354166666666700000
          21.166666666666670000
          169.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Pista2Voltas: TQRLabel
        Left = 529
        Top = 0
        Width = 74
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          42.333333333333330000
          1399.645833333333000000
          0.000000000000000000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Voltas'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object Pista2Melhor: TQRLabel
        Left = 529
        Top = 16
        Width = 74
        Height = 16
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          42.333333333333330000
          1399.645833333333000000
          42.333333333333330000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Melhor'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object Pista3Melhor: TQRLabel
        Left = 603
        Top = 16
        Width = 74
        Height = 16
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          42.333333333333330000
          1595.437500000000000000
          42.333333333333330000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Melhor'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object Pista3Voltas: TQRLabel
        Left = 603
        Top = 0
        Width = 74
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          42.333333333333330000
          1595.437500000000000000
          0.000000000000000000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Voltas'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object Pista4Voltas: TQRLabel
        Left = 677
        Top = 0
        Width = 74
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          42.333333333333330000
          1791.229166666667000000
          0.000000000000000000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Voltas'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object Pista4Melhor: TQRLabel
        Left = 677
        Top = 16
        Width = 74
        Height = 16
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          42.333333333333330000
          1791.229166666667000000
          42.333333333333330000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Melhor'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object Pista5Voltas: TQRLabel
        Left = 751
        Top = 0
        Width = 74
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          42.333333333333330000
          1987.020833333333000000
          0.000000000000000000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Voltas'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object Pista5Melhor: TQRLabel
        Left = 751
        Top = 16
        Width = 74
        Height = 16
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          42.333333333333330000
          1987.020833333333000000
          42.333333333333330000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Melhor'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object Pista6Voltas: TQRLabel
        Left = 825
        Top = 0
        Width = 74
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          42.333333333333330000
          2182.812500000000000000
          0.000000000000000000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Voltas'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object Pista6Melhor: TQRLabel
        Left = 825
        Top = 16
        Width = 74
        Height = 16
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          42.333333333333330000
          2182.812500000000000000
          42.333333333333330000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Melhor'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object Pista7Melhor: TQRLabel
        Left = 899
        Top = 16
        Width = 74
        Height = 16
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          42.333333333333330000
          2378.604166666667000000
          42.333333333333330000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Melhor'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object Pista7Voltas: TQRLabel
        Left = 899
        Top = 0
        Width = 74
        Height = 16
        Frame.DrawLeft = True
        Size.Values = (
          42.333333333333330000
          2378.604166666667000000
          0.000000000000000000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Voltas'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object Pista8Voltas: TQRLabel
        Left = 973
        Top = 0
        Width = 74
        Height = 16
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          2574.395833333333000000
          0.000000000000000000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Voltas'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object Pista8Melhor: TQRLabel
        Left = 973
        Top = 16
        Width = 74
        Height = 16
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          42.333333333333330000
          2574.395833333333000000
          42.333333333333330000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Melhor'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 8
      end
      object LabelCorMelhorFenda: TQRLabel
        Left = 335
        Top = 9
        Width = 64
        Height = 15
        Size.Values = (
          39.687500000000000000
          886.354166666666700000
          23.812500000000000000
          169.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Cor'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlCenter
        FontSize = 7
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 143
      Width = 1047
      Height = 28
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        74.083333333333330000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRSysData2: TQRSysData
        Left = 885
        Top = 6
        Width = 162
        Height = 15
        Size.Values = (
          39.687500000000000000
          2341.562500000000000000
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
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 19
      Width = 1047
      Height = 66
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        174.625000000000000000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object LabelTitulo: TQRLabel
        Left = 270
        Top = 1
        Width = 665
        Height = 28
        Size.Values = (
          74.083333333333330000
          714.375000000000000000
          2.645833333333333000
          1759.479166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Corrida'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object LabelPeriodo: TQRLabel
        Left = 270
        Top = 32
        Width = 665
        Height = 28
        Size.Values = (
          74.083333333333330000
          714.375000000000000000
          84.666666666666670000
          1759.479166666667000000)
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
      object LabelLoja: TQRLabel
        Left = 0
        Top = 1
        Width = 264
        Height = 59
        Size.Values = (
          156.104166666666700000
          0.000000000000000000
          2.645833333333333000
          698.500000000000000000)
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
        Font.Height = -21
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLogo: TQRImage
        Left = 966
        Top = 1
        Width = 80
        Height = 60
        Size.Values = (
          158.750000000000000000
          2555.875000000000000000
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
      Left = 38
      Top = 85
      Width = 1047
      Height = 26
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        68.791666666666670000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel15: TQRLabel
        Left = 0
        Top = 0
        Width = 54
        Height = 26
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          68.791666666666670000
          0.000000000000000000
          0.000000000000000000
          142.875000000000000000)
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
        Left = 54
        Top = 0
        Width = 103
        Height = 26
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          68.791666666666670000
          142.875000000000000000
          0.000000000000000000
          272.520833333333300000)
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
        Left = 157
        Top = 0
        Width = 44
        Height = 26
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          68.791666666666670000
          415.395833333333300000
          0.000000000000000000
          116.416666666666700000)
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
      object QRLabel3: TQRLabel
        Left = 201
        Top = 0
        Width = 36
        Height = 26
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          68.791666666666670000
          531.812500000000000000
          0.000000000000000000
          95.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Zona'
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
      object Média: TQRLabel
        Left = 237
        Top = 0
        Width = 40
        Height = 26
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          68.791666666666670000
          627.062500000000000000
          0.000000000000000000
          105.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'M'#233'dia'
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
        Left = 277
        Top = 0
        Width = 54
        Height = 26
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          68.791666666666670000
          732.895833333333300000
          0.000000000000000000
          142.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Dif.'
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
        Left = 330
        Top = 0
        Width = 125
        Height = 26
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          68.791666666666670000
          873.125000000000000000
          0.000000000000000000
          330.729166666666700000)
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
      object QRLabel13: TQRLabel
        Left = 455
        Top = 0
        Width = 74
        Height = 26
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          68.791666666666670000
          1203.854166666667000000
          0.000000000000000000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '1 Vermelha'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
      object QRLabel1: TQRLabel
        Left = 529
        Top = 0
        Width = 74
        Height = 26
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          68.791666666666670000
          1399.645833333333000000
          0.000000000000000000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '2 Branca'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
      object QRLabel2: TQRLabel
        Left = 603
        Top = 0
        Width = 74
        Height = 26
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          68.791666666666670000
          1595.437500000000000000
          0.000000000000000000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '3 Verde'
        Color = clGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
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
      object QRLabel4: TQRLabel
        Left = 677
        Top = 0
        Width = 74
        Height = 26
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          68.791666666666670000
          1791.229166666667000000
          0.000000000000000000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '4 Laranja'
        Color = 33023
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
      object QRLabel6: TQRLabel
        Left = 751
        Top = 0
        Width = 74
        Height = 26
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          68.791666666666670000
          1987.020833333333000000
          0.000000000000000000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '5 Azul'
        Color = clBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
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
      object QRLabel8: TQRLabel
        Left = 825
        Top = 0
        Width = 74
        Height = 26
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          68.791666666666670000
          2182.812500000000000000
          0.000000000000000000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '6 Amarela'
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
      object QRLabel10: TQRLabel
        Left = 899
        Top = 0
        Width = 74
        Height = 26
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Size.Values = (
          68.791666666666670000
          2378.604166666667000000
          0.000000000000000000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = '7 Roxa'
        Color = clPurple
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
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
        Width = 1047
        Height = 3
        Frame.Color = 131586
        Size.Values = (
          7.937500000000000000
          0.000000000000000000
          63.500000000000000000
          2770.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        VertAdjust = 0
        Brush.Style = bsClear
        Pen.Width = 2
      end
      object QRLabel11: TQRLabel
        Left = 973
        Top = 0
        Width = 74
        Height = 26
        Frame.Color = 131586
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          68.791666666666670000
          2574.395833333333000000
          0.000000000000000000
          195.791666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Preta'
        Color = 131586
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
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
    end
  end
  object M1: TQRImage
    Left = 1129
    Top = 3
    Width = 24
    Height = 24
    Size.Values = (
      63.500000000000000000
      2987.145833333333000000
      7.937500000000000000
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
  object M2: TQRImage
    Left = 1129
    Top = 48
    Width = 24
    Height = 24
    Size.Values = (
      63.500000000000000000
      2987.145833333333000000
      127.000000000000000000
      63.500000000000000000)
    XLColumn = 0
    XLNumFormat = nfGeneral
    ActiveInPreview = False
    Picture.Data = {
      07544269746D6170F6060000424DF60600000000000036000000280000001800
      0000180000000100180000000000C00600000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      EDEDEDD5D5D5D5D5D5EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFCECECEBEBEBEBABABABDBDBDBCBCBCB5B5B5B9B9B9CDCDCDFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFBFBFBC1C1C1C5C5C5CECECECDCDCDCBCBCBC9C9C9C7C7C7C4C4C4B8
      B8B8BBBBBBFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFC4C4C4CECECED3D3D3D0D0D0CACACAC9C9C9C7C7
      C7C4C4C4C4C4C4C5C5C5BDBDBDBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D5D5CCCCCCD9D9D9D9D9D9B8B8B8
      7575758585858686868585859A9A9AC9C9C9C5C5C5B7B7B7D4D4D4FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C9C9DDDDDDDE
      DEDEDEDEDEDCDCDC9898989B9B9BD6D6D6D4D4D4D0D0D0CDCDCDC9C9C9C4C4C4
      BCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
      FCD0D0D0E2E2E2E3E3E3E3E3E3E2E2E2DFDFDF9898989E9E9ED7D7D7D4D4D4D0
      D0D0CCCCCCC7C7C7B6B6B6FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFEAEAEAD6D6D6E7E7E7E8E8E8E8E8E8E7E7E7E5E5E5E0E0E09696
      96A2A2A2D7D7D7D3D3D3CECECECACACAB9B9B9EAEAEAFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDDADADAECECECEDEDEDEDEDEDECECEC
      EAEAEAE7E7E7DFDFDF868686BBBBBBD5D5D5D1D1D1CCCCCCBABABAEDEDEDFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEDADADAEEEEEEEE
      EEEEEDEDEDEEEEEEEDEDEDEAEAEAE6E6E6B0B0B09B9B9BD7D7D7D2D2D2CDCDCD
      BCBCBCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFCFCFCFECECECEEEEEEEDEDEDDBDBDBD0D0D0ECECECE4E4E4939393A8A8A8D9
      D9D9D4D4D4CDCDCDC2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFE5E5E5DCDCDCEEEEEEEDEDEDDCDCDC9595958080808080
      809D9D9DDADADADADADAD4D4D4C2C2C2E4E4E4FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4D4E0E0E0EDEDEDEDEDED
      EDEDEDEDEDEDE9E9E9E4E4E4DFDFDFDADADACACACACECECEFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2
      C2C2D8D8D8EAEAEAEEEEEEEDEDEDE8E8E8E3E3E3DCDCDCC8C8C8BBBBBBFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFBABABABEBEBECECECEDADADAD8D8D8D4D4D4D3D3D3C9C9C9BB
      BBBBBABABAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABABABAB4AECDA674D6AC78E2B883E2B7
      81D6AA74C9A67BB8B8B8BABABAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBCBCCB9F69F09C33
      F39C2EF39A2AF29827E49025C1AE95BDBDBDBDBDBDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0
      C6B9E49A3EF3A13AF39F36F39D32F09A2EC9873CB69475B49171C9BBAFFFFFFF
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
  object M3: TQRImage
    Left = 1129
    Top = 95
    Width = 24
    Height = 24
    Size.Values = (
      63.500000000000000000
      2987.145833333333000000
      251.354166666666700000
      63.500000000000000000)
    XLColumn = 0
    XLNumFormat = nfGeneral
    ActiveInPreview = False
    Picture.Data = {
      07544269746D6170F6060000424DF60600000000000036000000280000001800
      0000180000000100180000000000C00600000000000000000000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      EAECEEC8D2D9C8D2D9E9ECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFB2C6D6479EDF148DEA108FEF108FEF118BE9429BE0B1C6D7FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFAFAFB6CA9D61693F01398FC1298FC1198FC1097FC0F96FC0D94FB0E
      8DEF67A7D8FAFAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF72ACD51798F6179BFD169BFD1594FA1487F51489
      F61196FC1096FC0D95FC0C90F56DA9D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCEDA1C96EF199DFD1A9EFD1885F3
      1550DD165FE3165AE1144CDB1384F40F97FC0D95FC0F8DEDBECEDBFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FA8DC1C9FFD1D
      A0FD1EA0FD1E9DFC1DA0FD1C9FFD1A9EFD187DF01554DF1399FC1097FC0D94FB
      57A3DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB
      FC2999E81FA2FE20A3FE22A3FE21A3FE20A3FE1EA1FE1DA0FD198CF6164EDC14
      9AFD1198FD0F96FC198EE7FBFBFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE5E8EA249AEC22A4FE24A5FF25A6FE24A6FF23A5FF1E8AF41C81
      F11656E01877ED179CFD139AFD1197FC118DEBE5E8EBFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE9ECED269BEC26A6FE26A6FE26A6FE26A6FE
      26A6FE1D70E91B66E51858E01B93F8199DFD169BFC1298FC148EEAE9ECEEFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE38A1E826A7FF26
      A7FF26A6FE26A7FF26A7FF25A6FF25A5FE1C7BEE1863E51A9EFE169BFD1399FC
      2694E6FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF78B1D726A5FD26A7FF26A6FE25A5FE2398F925A6FE26A5FE1A6AE71966E61A
      9FFE179CFD1498FB70ABD8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFDCE2E62E9FEB26A7FF26A6FE25A2FD1858E0164CDB174B
      DB185EE21E97F91B9FFE179CFD1E93E9DBE2E7FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4C3D8289FF026A6FE26A6FE
      26A6FE26A6FE26A6FE23A4FE1FA1FD1B9FFD1B95EFA0C1D9FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33
      9DE4289BEA26A5FB26A7FF25A6FF25A5FE20A3FE1F9FFA1D93E92F9AE4FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF259DEE2C9FEC87B5D44CA8E72D9CE92A9AE948A5E684B3D42B
      9DEB259DEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF259DEE2097E3C9A576CFAA78D0B185D0B1
      83CEA875B5A3820F97F4259DEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3AA3EA869280F09C33
      F39C2EF39A2AF29827E490253792C60098FF3AA3EAFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0
      C3BFE49A3EF3A13AF39F36F39D32F09A2EB183444F8099527F93B4B7B6FFFFFF
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
