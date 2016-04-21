object fmMain: TfmMain
  Left = 0
  Top = 0
  Caption = 'DB Operate'
  ClientHeight = 635
  ClientWidth = 1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblForCol1: TLabel
    Left = 552
    Top = 50
    Width = 60
    Height = 18
    Caption = 'lblForCol1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblForCol2: TLabel
    Left = 552
    Top = 82
    Width = 60
    Height = 18
    Caption = 'lblForCol2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblForCol3: TLabel
    Left = 552
    Top = 114
    Width = 60
    Height = 18
    Caption = 'lblForCol3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblForCol4: TLabel
    Left = 552
    Top = 146
    Width = 60
    Height = 18
    Caption = 'lblForCol4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 98
    Top = 47
    Width = 399
    Height = 580
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object btnRun: TButton
    Left = 17
    Top = 45
    Width = 75
    Height = 25
    Caption = 'Open'
    TabOrder = 1
    OnClick = btnRunClick
  end
  object btnPrevious: TButton
    Left = 914
    Top = 175
    Width = 75
    Height = 25
    Caption = 'Previous'
    Enabled = False
    TabOrder = 2
    OnClick = btnPreviousClick
  end
  object btnNext: TButton
    Left = 833
    Top = 175
    Width = 75
    Height = 25
    Caption = 'Next'
    Enabled = False
    TabOrder = 3
    OnClick = btnNextClick
  end
  object btnFirst: TButton
    Left = 752
    Top = 175
    Width = 75
    Height = 25
    Caption = 'First'
    Enabled = False
    TabOrder = 4
    OnClick = btnFirstClick
  end
  object btnLast: TButton
    Left = 995
    Top = 175
    Width = 75
    Height = 25
    Caption = 'Last'
    Enabled = False
    TabOrder = 5
    OnClick = btnLastClick
  end
  object edtColumn1: TEdit
    Left = 632
    Top = 47
    Width = 441
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Text = 'edtColumn1'
  end
  object edtColumn2: TEdit
    Left = 632
    Top = 79
    Width = 441
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object edtColumn3: TEdit
    Left = 632
    Top = 111
    Width = 441
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object edtColumn4: TEdit
    Left = 632
    Top = 143
    Width = 441
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object sqlConn: TSQLConnection
    ConnectionName = 'MSSQLCONNECTION'
    DriverName = 'MSSQL'
    GetDriverFunc = 'getSQLDriverMSSQL'
    LibraryName = 'dbxmss.dll'
    LoginPrompt = False
    Params.Strings = (
      'schemaoverride=sa.dbo'
      'drivername=MSSQL'
      'hostname=192.168.100.18'
      'database=ccm_test'
      'user_name=sa'
      'password=6937937'
      'blobsize=-1'
      'localecode=0000'
      'isolationlevel=ReadCommitted'
      'os authentication=False'
      'prepare sql=False'
      'connecttimeout=60'
      'mars_connection=False')
    VendorLib = 'sqlncli10.dll'
    Left = 56
    Top = 16
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 'SELECT * FROM empno;'
    DbxCommandType = 'Dbx.SQL'
    DataSource = DataSource1
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConn
    Left = 56
    Top = 80
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Constraints = False
    Left = 56
    Top = 144
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 56
    Top = 208
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 56
    Top = 272
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT TOP(10) emp_no, emp_nm, depm_no  FROM empno;')
    SQLConnection = sqlConn
    Left = 8
    Top = 80
  end
end
