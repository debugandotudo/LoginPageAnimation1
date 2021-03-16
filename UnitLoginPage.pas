unit UnitLoginPage;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, FMX.Ani,
  FMX.Effects;

type
  TfrmLoginPage = class(TForm)
    img_background: TImage;
    lay_background: TLayout;
    lay_top: TLayout;
    img_light1: TImage;
    img_light2: TImage;
    Img_clock: TImage;
    lay_login: TLayout;
    Label1: TLabel;
    lay_bottom: TLayout;
    rect_edit_email: TRectangle;
    Line1: TLine;
    edt_email: TEdit;
    StyleBook1: TStyleBook;
    rect_edt_password: TRectangle;
    edt_password: TEdit;
    lay_edts: TLayout;
    ShadowEffect1: TShadowEffect;
    lay_bottom2: TLayout;
    rect_btn_login: TRectangle;
    Label2: TLabel;
    lbl_forgot_password: TLabel;
    procedure FormShow(Sender: TObject);
  private
    procedure Animacao(obj: TObject;duration : Single);
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmLoginPage: TfrmLoginPage;

implementation

{$R *.fmx}

procedure TfrmLoginPage.FormShow(Sender: TObject);
begin
  Animacao(img_light1,1.2);
  Animacao(img_light2,1.4);
  Animacao(Img_clock,1.6);
  Animacao(Label1,1.8);
  Animacao(lay_bottom,2);
  Animacao(lay_bottom2,2.2);
end;

procedure TfrmLoginPage.Animacao(obj : TObject; duration : Single);
var Align : TAlignLayout;
begin

  if obj.ClassType = TImage then begin
      Align := TImage(obj).Align;
      TImage(obj).Align := TAlignLayout.None;
      TImage(obj).Position.Y := - TImage(obj).Height;
      TImage(obj).Opacity := 0;
      TImage(obj).AnimateFloat('Position.y',0,duration,TAnimationType.&In,TInterpolationType.Circular);
      TImage(obj).AnimateFloat('Opacity',1,duration,TAnimationType.&In,TInterpolationType.Circular);
      TImage(obj).Align := Align;
  end;

  if obj.ClassType = TLabel then begin
      TLabel(obj).Opacity := 0;
      TLabel(obj).Margins.Top := - 50;
      TLabel(obj).AnimateFloat('Margins.top',0,duration,TAnimationType.&In,TInterpolationType.Circular);
      TLabel(obj).AnimateFloat('Opacity',1,duration,TAnimationType.&In,TInterpolationType.Circular);

  end;

  if obj.ClassType = TLayout then begin
      TLayout(obj).Opacity := 0;
      TLayout(obj).AnimateFloat('Opacity',1,duration,TAnimationType.&In,TInterpolationType.Circular);
  end;

end;

end.
