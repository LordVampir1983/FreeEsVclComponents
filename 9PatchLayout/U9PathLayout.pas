unit U9PathLayout;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ES.BaseControls, ES.Layouts, ES.NinePatch;

type
  TForm2 = class(TForm)
    EsImageLayout1: TEsImageLayout;
    EsImageLabel1: TEsImageLabel;
    EsImageLabel2: TEsImageLabel;
    EsImageLabel3: TEsImageLabel;
    EsImageLabel4: TEsImageLabel;
    EsImageLabel5: TEsImageLabel;
    EsImageStaticText1: TEsImageStaticText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
