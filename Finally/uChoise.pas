unit uChoise;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TfmChoise = class(TForm)
    imChoise: TImage;
    butCount: TButton;
    lbChoise: TLabel;
    butInst: TButton;
    procedure butCountClick(Sender: TObject);
    procedure butInstClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmChoise: TfmChoise;


implementation

uses uOperations, uOpenUChoise, uInstruction, uHi;

{$R *.dfm}

procedure TfmChoise.butCountClick(Sender: TObject);
begin
  fmOper.show;
  Form6.Show;
  fmChoise.Enabled := false;
  fmChoise.Visible := false;
end;

procedure TfmChoise.butInstClick(Sender: TObject);
begin
  if not assigned(fmInstruction) then
    fmInstruction := tfmInstruction.create(self);
  fmInstruction.show;
  fmChoise.Enabled := false;
  fmChoise.Visible := false;
end;

procedure TfmChoise.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fmHi.close;
end;

end.
