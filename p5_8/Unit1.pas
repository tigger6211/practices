unit Unit1;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs;

type
    TfmMain = class(TForm)
    procedure FormShow(Sender: TObject);
    private
    { Private declarations }
    public
    { Public declarations }
    end;

const
    POINTS: array[0..3] of TPoint = ((x: 10; y: 10), (x: 10; y: 100), (x: 100; y: 100), (x: 100; y: 10));
var
    fmMain: TfmMain;
    canvas: TCanvas;

implementation

    {$R *.dfm}

procedure TfmMain.FormShow(Sender: TObject);
var
    i: Integer;
begin


        Canvas.PenPos := Points[0];

        for I := Low(Points) to High(points) do
            canvas.LineTo(POINTS[i].x, POINTS[i].y);

        canvas.LineTo(POINTS[0].x, POINTS[0].y);


end;

end.
