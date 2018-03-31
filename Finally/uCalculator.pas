unit uCalculator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls , uHi;

type
  TfmCalculator = class(TForm)
    EPoleEnter: TEdit;
    B1: TButton;
    B2: TButton;
    B3: TButton;
    B4: TButton;
    B5: TButton;
    B6: TButton;
    B7: TButton;
    B8: TButton;
    B9: TButton;
    b0: TButton;
    BC: TButton;
    BPoint: TButton;
    BEnter: TButton;
    BDiv: TButton;
    BMultiply: TButton;
    BMinus: TButton;
    BPlus: TButton;
    BSign: TButton;
    BAddList: TButton;
    ListBox1: TListBox;
    BDelete: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure b0Click(Sender: TObject);
    procedure B1Click(Sender: TObject);
    procedure B2Click(Sender: TObject);
    procedure B3Click(Sender: TObject);
    procedure B4Click(Sender: TObject);
    procedure B5Click(Sender: TObject);
    procedure B6Click(Sender: TObject);
    procedure B7Click(Sender: TObject);
    procedure B8Click(Sender: TObject);
    procedure B9Click(Sender: TObject);
    procedure BPointClick(Sender: TObject);
    procedure BSignClick(Sender: TObject);
    procedure BAddListClick(Sender: TObject);
    procedure BPlusClick(Sender: TObject);
    procedure BMinusClick(Sender: TObject);
    procedure BMultiplyClick(Sender: TObject);
    procedure BDivClick(Sender: TObject);
    procedure BEnterClick(Sender: TObject);
    procedure BCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BDeleteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ListBox1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCalculator: TfmCalculator;

implementation

uses uOperations, uSound, uActions;

{$R *.dfm}

type
  TOperation=(oDo,oPlus,oMinus,oMultiply,oDiv);

var
  accum: real;
  Operation: TOperation;
  f, k: byte;


//процедура обработки введенных чисел-символов и их преобразования в числа
procedure NumbShow(symb : char);
begin
  with fmCalculator do
  begin
    if f = 0 then
      begin
        EPoleEnter.Text := symb;
        f := 1;
      end
    else
      begin
        if k = 0 then
          if EPoleEnter.Text <> symb then
            EPoleEnter.Text := EPoleEnter.Text + symb;
        if k <> 0 then
          EPoleEnter.Text := EPoleEnter.Text + symb;
      end;
  end;
end;


//процедура проведения операций
procedure DoOperation;
var
    numb: real;
    s: string;
    l : integer;
begin
  s := fmCalculator.EPoleEnter.Text;
  l := 0;
  numb := StrToFloat(s);
  case Operation of
      oDo: begin
            accum := numb;
            inc(l);
           end;
      oPlus: accum := accum + numb;
      oMinus: accum := accum - numb;
      oMultiply: accum := accum * numb;
      oDiv: begin
              if numb = 0 then
                begin
                  MessageBox(fmCalculator.handle,PChar('Нельзя делить на ноль!'),PChar('Ошибка'),(MB_OK+MB_ICONERROR));
                  if (sound = true) and (player = false) then
                    Music('Предупреждения\На ноль делить нельзя.mp3');
                end
              else accum := accum / numb;
            end;
  end;
  fmCalculator.EPoleEnter.Text := FloatToStr(accum)
end;


//процедура направления на операцию или продолжения ввода
procedure Doing(Oper : TOperation);
begin
  if f = 0
    then Operation:=oper
  else
   begin
    DoOperation;
    Operation:=oper;
    f:=0;
  end;
end;


procedure TfmCalculator.b0Click(Sender: TObject);
begin
  k := 0;
  NumbShow('0');
end;

procedure TfmCalculator.B1Click(Sender: TObject);
begin
  k := 1;
  NumbShow('1');
end;

procedure TfmCalculator.B2Click(Sender: TObject);
begin
  k := 1;
  NumbShow('2');
end;

procedure TfmCalculator.B3Click(Sender: TObject);
begin
  k := 1;
  NumbShow('3');
end;

procedure TfmCalculator.B4Click(Sender: TObject);
begin
  k := 1;
  NumbShow('4');
end;

procedure TfmCalculator.B5Click(Sender: TObject);
begin
  k := 1;
  NumbShow('5');
end;

procedure TfmCalculator.B6Click(Sender: TObject);
begin
  k := 1;
  NumbShow('6');
end;

procedure TfmCalculator.B7Click(Sender: TObject);
begin
  k := 1;
  NumbShow('7');
end;

procedure TfmCalculator.B8Click(Sender: TObject);
begin
  k := 1;
  NumbShow('8');
end;

procedure TfmCalculator.B9Click(Sender: TObject);
begin
  k := 1;
  NumbShow('9');
end;

procedure TfmCalculator.BPointClick(Sender: TObject);
begin
  if fmCalculator.EPoleEnter.Text = '0' then
    begin
      fmCalculator.EPoleEnter.Text := '0,';
      f := 1;
    end;
  if Pos(',',EPoleEnter.Text) = 0 then
      fmCalculator.EPoleEnter.Text := fmCalculator.EPoleEnter.Text + ',';
end;


//процедура замены знака
procedure TfmCalculator.BSignClick(Sender: TObject);
const
  s1 = '-';
var
  s: string;
begin
  s := fmCalculator.EPoleEnter.Text;
  if s[1] = s1 then
    begin
      delete(s, 1, 1);
      fmCalculator.EPoleEnter.Text := s;
    end
  else
    fmCalculator.EPoleEnter.Text := s1 + fmCalculator.EPoleEnter.Text;
end;


//процедура добавления результатов в список
procedure TfmCalculator.BAddListClick(Sender: TObject);
begin
  if fmCalculator.EPoleEnter.Text = '' then
    ListBox1.Items.Add('0')
  else ListBox1.Items.Add(fmCalculator.EPoleEnter.Text);
  fmCalculator.ListBox1.Items.SaveToFile(way + 'Занесение в файл.txt');
end;

procedure TfmCalculator.BPlusClick(Sender: TObject);
begin
  doing(oplus);
end;

procedure TfmCalculator.BMinusClick(Sender: TObject);
begin
  doing(ominus);
end;

procedure TfmCalculator.BMultiplyClick(Sender: TObject);
begin
  doing(omultiply);
end;

procedure TfmCalculator.BDivClick(Sender: TObject);
begin
  doing(odiv);
end;

procedure TfmCalculator.BEnterClick(Sender: TObject);
begin
  doing(odo);
end;

procedure TfmCalculator.BCClick(Sender: TObject);
begin
  EPoleEnter.Text := '0';
  accum := 0;
  Operation := oDo;
  f := 0;
end;

procedure TfmCalculator.FormCreate(Sender: TObject);
begin
  Operation:=oDo;
  EPoleEnter.ReadOnly:=true;
end;


//процедура блокировки нечисловых клавиш клавиатуры
procedure TfmCalculator.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    ord('0'),96: fmCalculator.b0.Click;
    ord('1'),97: fmCalculator.B1.Click;
    ord('2'),98: fmCalculator.B2.Click;
    ord('3'),99: fmCalculator.B3.Click;
    ord('4'),100: fmCalculator.B4.Click;
    ord('5'),101: fmCalculator.B5.Click;
    ord('6'),102: fmCalculator.B6.Click;
    ord('7'),103: fmCalculator.B7.Click;
    ord('8'),104: fmCalculator.B8.Click;
    ord('9'),105: fmCalculator.B9.Click;
    106: fmCalculator.BMultiply.Click;
    107: fmCalculator.BPlus.Click;
    109: fmCalculator.BMinus.Click;
    110: fmCalculator.BPoint.Click;
    111: fmCalculator.BDiv.Click;
    13:  fmCalculator.BEnter.Click;
  end;
end;

procedure TfmCalculator.BDeleteClick(Sender: TObject);
begin
  ListBox1.Items.Clear;
end;

procedure TfmCalculator.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   ListBox1.Items.Clear;
   fmOper.btCalc.Enabled := true;
end;


//процедура удаления из временного файла и добавления в поле
procedure TfmCalculator.ListBox1Click(Sender: TObject);
var
  h : integer;
begin
  h := fmCalculator.ListBox1.ItemIndex;
  if RadioButton1.Checked = true then
    begin
      fmCalculator.ListBox1.Items.Delete(h);
      fmCalculator.ListBox1.Items.SaveToFile(way + 'Занесение в файл.txt');
    end;
  if RadioButton2.Checked = true then
    begin
      EPoleEnter.Text := ListBox1.Items[h];
    end;
end;

procedure TfmCalculator.FormShow(Sender: TObject);
begin
  EPoleEnter.Text := '0';
  RadioButton1.Checked := true;
end;

end.
