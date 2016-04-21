unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfmMain = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;

implementation

{$R *.dfm}

procedure TfmMain.Button1Click(Sender: TObject);
const
    Colors: array[boolean] of TColor = (clBtnFace, clWhite);
    t : TPoint
begin
    edit1.Enabled := NOT EDIT1.Enabled;
    edit1.Color := Colors[EDIT1.Enabled];
end;

end.
