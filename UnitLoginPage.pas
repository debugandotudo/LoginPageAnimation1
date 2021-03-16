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
    Ima_clock: TImage;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoginPage: TfrmLoginPage;

implementation

{$R *.fmx}

end.
