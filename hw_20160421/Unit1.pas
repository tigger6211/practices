unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Grids, DBGrids, DB, DBClient, Provider, SqlExpr,
  DBXMSSQL, ExtCtrls, DBCtrls;

type
  TfmMain = class(TForm)
    sqlConn: TSQLConnection;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    btnRun: TButton;
    btnPrevious: TButton;
    btnNext: TButton;
    btnFirst: TButton;
    btnLast: TButton;
    SQLQuery1: TSQLQuery;
    lblForCol1: TLabel;
    lblForCol2: TLabel;
    edtColumn2: TEdit;
    lblForCol3: TLabel;
    edtColumn3: TEdit;
    lblForCol4: TLabel;
    edtColumn4: TEdit;
    edtColumn1: TEdit;

    procedure btnRunClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btnNextClick(Sender: TObject);
    procedure btnPreviousClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure switchButtonsUsable(switch: boolean = false);
    procedure setEditGoup();
    procedure setLblForColsGoup();
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;


implementation

{$R *.dfm}

procedure TfmMain.btnFirstClick(Sender: TObject);
begin
    ClientDataSet1.FindFirst;
    setEditGoup();
end;

procedure TfmMain.btnLastClick(Sender: TObject);
begin
    ClientDataSet1.FindLast;
    setEditGoup();
end;

procedure TfmMain.btnNextClick(Sender: TObject);
begin
    ClientDataSet1.FindNext;
    setEditGoup();
end;

procedure TfmMain.btnPreviousClick(Sender: TObject);
begin
    ClientDataSet1.FindPrior;
    setEditGoup();
end;

procedure TfmMain.btnRunClick(Sender: TObject);
begin
        if ClientDataSet1.state in [dsInactive, dsOpening] then
        begin
                btnRun.Caption := 'Close';
                ClientDataSet1.Open;
                switchButtonsUsable(true);
                setEditGoup();
                setLblForColsGoup();
        end else begin
            btnRun.Caption := 'Open';
            ClientDataSet1.close;
            switchButtonsUsable(false);
        end;
end;

procedure TfmMain.DBGrid1CellClick(Column: TColumn);
begin
    showMessage('heloo');
    setEditGoup();
end;

procedure TfmMain.FormActivate(Sender: TObject);
begin
    ShowMessage('FormActivate');
end;

procedure TfmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    ShowMessage('FormClose');
end;

procedure TfmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    ShowMessage('FormCloseQuery');
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
    ShowMessage('FormCreate');
end;

procedure TfmMain.FormPaint(Sender: TObject);
begin
    ShowMessage('FormPaint');
end;

procedure TfmMain.FormShow(Sender: TObject);
begin
    ShowMessage('FormShow');
end;

procedure TfmMain.switchButtonsUsable(switch: boolean);
begin
    btnFirst.Enabled := switch;
    btnNext.Enabled := switch;
    btnPrevious.Enabled := switch;
    btnLast.Enabled := switch;
end;

procedure TfmMain.setEditGoup();
begin
    edtColumn1.text := DBGrid1.fields[0].AsString;
    edtColumn2.text := DBGrid1.fields[1].AsString;
    edtColumn3.text := DBGrid1.fields[2].AsString;
end;
procedure TfmMain.setLblForColsGoup();
begin
    lblForCol1.Caption := DBGrid1.Columns[0].FieldName;
    lblForCol2.Caption := DBGrid1.Columns[1].FieldName;
    lblForCol3.Caption := DBGrid1.Columns[2].FieldName;
end;
end.
