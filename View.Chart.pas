unit View.Chart;

interface

uses
     Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
     Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ActiveX, Vcl.ExtCtrls,
     Vcl.OleCtrls, SHDocVw;

type
     TFormChart = class(TForm)
          WebBrowser: TWebBrowser;
          PanelChart: TPanel;
          ButtonDonut: TButton;
          ButtonPie: TButton;
          ButtonBar: TButton;
          procedure ButtonDonutClick(Sender: TObject);
          procedure ButtonPieClick(Sender: TObject);
          procedure ButtonBarClick(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FormChart: TFormChart;

implementation

{$R *.dfm}

uses Controller.Chart.Factory;

procedure TFormChart.ButtonBarClick(Sender: TObject);
begin
     TControllerChartFactory.New.Default
          .SetCharTitle('Sales TODAY')
          .SetCharSubTitle('Sales of Product')
          .AddTitle('Product', 'Amount', 'style')
          .AddValue('Pens', '190', 'color: yellow')
          .AddValue('Glasses', '110', 'color: blue')
          .AddValue('Cups', '90', 'color: red')
          .AddValue('Papers', '88', 'color: gray')
          .AddValue('Scissors', '63', 'color: green')
          .ShowChartBar(WebBrowser);
end;

procedure TFormChart.ButtonDonutClick(Sender: TObject);
begin
     TControllerChartFactory.New.Default
          .SetCharTitle('Sales TODAY')
          .SetCharSubTitle('Sales of Product')
          .AddTitle('Product', 'Amount', 'style')
          .AddValue('Pens', '190', 'color: yellow')
          .AddValue('Glasses', '110', 'color: blue')
          .AddValue('Cups', '90', 'color: red')
          .AddValue('Papers', '88', 'color: gray')
          .AddValue('Scissors', '63', 'color: green')
          .ShowChartDonut(WebBrowser);
end;

procedure TFormChart.ButtonPieClick(Sender: TObject);
begin
     TControllerChartFactory.New.Default
          .SetCharTitle('Sales TODAY')
          .SetCharSubTitle('Sales of Product')
          .AddTitle('Product', 'Amount', 'style')
          .AddValue('Pens', '190', 'color: yellow')
          .AddValue('Glasses', '110', 'color: blue')
          .AddValue('Cups', '90', 'color: red')
          .AddValue('Papers', '88', 'color: gray')
          .AddValue('Scissors', '63', 'color: green')
          .ShowChartPie(WebBrowser);
end;

end.
