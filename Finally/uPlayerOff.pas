unit uPlayerOff;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  playeron : boolean;

implementation

uses uSound, uHi;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  form1.MediaPlayer1.Destroy;
  form2.Close;
  playeron := false;
  form2.Button1.Visible := false;
  form2.Button1.Enabled := false;
end;

end.
