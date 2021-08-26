unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Response.Adapter, System.JSON,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  Vcl.StdCtrls, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB, FireDAC.Phys.IBDef,
  FireDAC.VCLUI.Wait, FireDAC.DApt, FireDAC.Phys.FBDef,
  FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Comp.UI,
  Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Samples.Gauges, Vcl.Buttons,
  uDWConstsData, uRESTDWPoolerDB, uDWAbout, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    Button6: TButton;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    Button7: TButton;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    DBGrid1: TDBGrid;
    FDQueryAvaliacaoDesktop: TFDQuery;
    FDQueryAvaliacaoDesktopAVALIACAO_ID: TIntegerField;
    FDQueryAvaliacaoDesktopAVALIACAO_ANO: TIntegerField;
    FDQueryAvaliacaoDesktopAVALIACAO_NOTA: TCurrencyField;
    FDQueryAvaliacaoDesktopTURMA_ID: TIntegerField;
    FDQueryAvaliacaoDesktopTURMA_ALUNO_ID: TIntegerField;
    FDQueryAvaliacaoDesktopDISCIPLINA_ID: TIntegerField;
    FDQueryAvaliacaoDesktopGAVAL_ID: TIntegerField;
    FDQueryAvaliacaoDesktopREL_DIAGNOSTICO: TMemoField;
    FDQueryAvaliacaoDesktopREL_FINAL: TMemoField;
    ProgressBar1: TProgressBar;
    Filtro: TGroupBox;
    DBLookupComboBoxUnidade: TDBLookupComboBox;
    Lbturma: TLabel;
    DBLookupComboBoxTurma: TDBLookupComboBox;
    Label1: TLabel;
    DSTurmaWeb: TDataSource;
    Label2: TLabel;
    EdtAno: TEdit;
    DSUnidadeWeb: TDataSource;
    FDConnectionDesktop: TFDConnection;
    Edit1: TEdit;
    Label3: TLabel;
    Button1: TButton;
    DBLookupComboBoxDisciplina: TDBLookupComboBox;
    Label4: TLabel;
    DSDisciplinaWeb: TDataSource;
    BitBtn1: TBitBtn;
    Button2: TButton;
    RESTDWClientSQLdisciplina: TRESTDWClientSQL;
    RESTDWClientSQLdisciplinaDISCIPLINA_ID: TIntegerField;
    RESTDWClientSQLdisciplinaDISCIPLINA_DESCRICAO: TStringField;
    RESTDWClientSQLdisciplinaDISCIPLINA_ASEG: TStringField;
    RESTDWClientSQLdisciplinaESTABELECIMENTO_ID: TIntegerField;
    RESTDWClientSQLdisciplinaDISCIPLINA_MAS: TIntegerField;
    RESTDWClientSQLdisciplinaDISCIPLINA_DSAS: TStringField;
    RESTDWClientSQLdisciplinaDISCIPLINA_INTER: TIntegerField;
    RESTDWClientSQLdisciplinaDISCIPLINA_PESO: TIntegerField;
    RESTDWClientSQLdisciplinaDISCIPLINA_ASINTER: TStringField;
    RESTDWClientSQLdisciplinaDISCIPLINA_QUADRO: TStringField;
    RESTDWClientSQLdisciplinaDISCIPLINA_NOMECURTO: TStringField;
    DSAvaliacaoWeb: TDataSource;
    RESTDWClientSQLAvaliacaoWeb: TRESTDWClientSQL;
    RESTDWClientSQLAvaliacaoUpdateWeb: TRESTDWClientSQL;
    RESTDWClientSQLAvaliacaoWebavaliacao_id: TIntegerField;
    RESTDWClientSQLAvaliacaoWebDISCIPLINA_ID: TIntegerField;
    RESTDWClientSQLAvaliacaoWebDISCIPLINA_DESCRICAO: TStringField;
    RESTDWClientSQLAvaliacaoWebturma_aluno_id: TIntegerField;
    RESTDWClientSQLAvaliacaoWebpfisica_nome: TStringField;
    RESTDWClientSQLAvaliacaoWebavaliacao_nota: TFloatField;
    RESTDWClientSQLAvaliacaoWebrel_diagnostico: TMemoField;
    RESTDWClientSQLAvaliacaoWebrel_final: TMemoField;
    RESTDWClientSQLAvaliacaoWebSTATUS: TIntegerField;
    RESTDWClientSQLTurmaWeb: TRESTDWClientSQL;
    RESTDWClientSQLTurmaWebSERIE_ID: TIntegerField;
    RESTDWClientSQLTurmaWebTURMA_ID: TIntegerField;
    RESTDWClientSQLTurmaWebSERIE_VALOR: TFloatField;
    RESTDWClientSQLTurmaWebSERIE_QTD_PARCELA: TSmallintField;
    RESTDWClientSQLTurmaWebSERIE_VLR_PARCELA: TFloatField;
    RESTDWClientSQLTurmaWebTURMA_DESCRICAO: TStringField;
    RESTDWClientSQLTurmaWebCAMPO_TURMA: TStringField;
    RESTDWClientSQLUnidadeWeb: TRESTDWClientSQL;
    RESTDWClientSQLUnidadeWebGAVAL_ID: TIntegerField;
    RESTDWClientSQLUnidadeWebGAVAL_DESCRICAO: TStringField;
    RESTDWClientSQLAvaliacaoUpdateWebAVALIACAO_ID: TIntegerField;
    RESTDWDataBase1: TRESTDWDataBase;
    RESTDWClientSQLTurmaWebCURSO_ANO: TStringField;
    RESTDWClientSQLTurmaWebPERIODO_ID: TIntegerField;
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public

    ano: string;

    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  vError: String;

begin

  RESTDWClientSQLAvaliacaoUpdateWeb.close;
  RESTDWClientSQLAvaliacaoUpdateWeb.ParamByName('ParametroAno').Value :=
    EdtAno.Text;
  RESTDWClientSQLAvaliacaoUpdateWeb.ParamByName('parametroUNIDADE').Value :=
    RESTDWClientSQLUnidadeWebGAVAL_ID.Text;
  RESTDWClientSQLAvaliacaoUpdateWeb.ParamByName('parametroTURMA').Value :=
    RESTDWClientSQLTurmaWebTURMA_ID.Text;
  RESTDWClientSQLAvaliacaoUpdateWeb.ParamByName('parametroDISCIPLINA').Value :=
    RESTDWClientSQLdisciplinaDISCIPLINA_ID.Text;

  RESTDWClientSQLAvaliacaoUpdateWeb.ParamByName('parametroStatus').Value := 1;

  RESTDWClientSQLAvaliacaoUpdateWeb.ExecSQL(vError);


  // end;

  BEGIN
    ShowMessage('Edição de notas SgeMobile BLOQUEDA com sucesso!');

  END;

  RESTDWClientSQLAvaliacaoWeb.close;
  RESTDWClientSQLAvaliacaoWeb.ParamByName('ParametroAno').Value := EdtAno.Text;
  RESTDWClientSQLAvaliacaoWeb.ParamByName('parametroUNIDADE').Value :=
    RESTDWClientSQLUnidadeWebGAVAL_ID.Text;
  RESTDWClientSQLAvaliacaoWeb.ParamByName('parametroTURMA').Value :=
    RESTDWClientSQLTurmaWebTURMA_ID.Text;
  RESTDWClientSQLAvaliacaoWeb.ParamByName('parametroDISCIPLINA').Value :=
    RESTDWClientSQLdisciplinaDISCIPLINA_ID.Text;

  RESTDWClientSQLAvaliacaoWeb.Open;

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  vError: String;

begin
  RESTDWClientSQLAvaliacaoUpdateWeb.close;
  RESTDWClientSQLAvaliacaoUpdateWeb.ParamByName('ParametroAno').Value :=
    EdtAno.Text;
  RESTDWClientSQLAvaliacaoUpdateWeb.ParamByName('parametroUNIDADE').Value :=
    RESTDWClientSQLUnidadeWebGAVAL_ID.Text;
  RESTDWClientSQLAvaliacaoUpdateWeb.ParamByName('parametroTURMA').Value :=
    RESTDWClientSQLTurmaWebTURMA_ID.Text;
  RESTDWClientSQLAvaliacaoUpdateWeb.ParamByName('parametroDISCIPLINA').Value :=
    RESTDWClientSQLdisciplinaDISCIPLINA_ID.Text;
  // UniQueryAvaliacaoUpdateWeb.ParamByName('parametroAvaliacaoID').Value := UniQueryAvaliacaoWebavaliacao_id.Text;
  RESTDWClientSQLAvaliacaoUpdateWeb.ParamByName('parametroStatus')
    .Value := null;

  RESTDWClientSQLAvaliacaoUpdateWeb.ExecSQL(vError);
  // end;

  BEGIN
    ShowMessage('Edição de notas SgeMobile DESBLOQUEDA com sucesso!');

  END;

  RESTDWClientSQLAvaliacaoWeb.close;
  RESTDWClientSQLAvaliacaoWeb.ParamByName('ParametroAno').Value := EdtAno.Text;
  RESTDWClientSQLAvaliacaoWeb.ParamByName('parametroUNIDADE').Value :=
    RESTDWClientSQLUnidadeWebGAVAL_ID.Text;
  RESTDWClientSQLAvaliacaoWeb.ParamByName('parametroTURMA').Value :=
    RESTDWClientSQLTurmaWebTURMA_ID.Text;
  RESTDWClientSQLAvaliacaoWeb.ParamByName('parametroDISCIPLINA').Value :=
    RESTDWClientSQLdisciplinaDISCIPLINA_ID.Text;

  RESTDWClientSQLAvaliacaoWeb.Open;

end;

procedure TForm1.Button6Click(Sender: TObject);
var
  I: Integer;
begin

  // I:=0;
  FDQueryAvaliacaoDesktop.Open;
  RESTDWClientSQLAvaliacaoWeb.First;

  ProgressBar1.max := RESTDWClientSQLAvaliacaoWeb.RecordCount;
  // Gauge1.MaxValue := UniQueryAvaliacaoWeb.RecordCount;

  for I := 1 to RESTDWClientSQLAvaliacaoWeb.RecordCount do
  begin
    FDQueryAvaliacaoDesktop.close;
    FDQueryAvaliacaoDesktop.ParamByName('Parametroavaliacao_id').AsInteger :=
      RESTDWClientSQLAvaliacaoWeb.FieldByName('avaliacao_id').AsInteger;
    FDQueryAvaliacaoDesktop.Open;
    if FDQueryAvaliacaoDesktop.FieldByName('avaliacao_id')
      .AsInteger = RESTDWClientSQLAvaliacaoWeb.FieldByName('avaliacao_id').AsInteger
    then
    begin
      FDQueryAvaliacaoDesktop.Edit;
      FDQueryAvaliacaoDesktop.FieldByName('AVALIACAO_NOTA').Text :=
        RESTDWClientSQLAvaliacaoWeb.FieldByName('AVALIACAO_NOTA').Text;
      // FDQuery1.FieldByName('WEB').ASINTEGER:= 1;
      FDQueryAvaliacaoDesktop.Post;
    end;

    ProgressBar1.position := I;

    // Gauge1.Progress := I;

    // I:=I+1;

    // Gauge1.Refresh;

    Application.ProcessMessages;

    RESTDWClientSQLAvaliacaoWeb.Next;







    // Gauge1.Refresh;

  end;

  ShowMessage('Sincronismo efetuado com sucesso!');
  // }

  // end;

  {


    var
    pb_cont:integer;
    begin
    pb_cont:=0;
    query_consulta.Open;
    query_consulta.First;
    pb1.max:=query.RecordCount;
    while not (query_consulta.eof) do // percorre a query
    begin
    query_insere.ParamByName('Campo1').AsString := query_consulta.FieldByName('Campo1').AsString;
    pb.position:=pb_cont;
    pb_cont:=pb_cont+1;
    Application.ProcessMessages
    query_consulta.Next; // move para o próximo registro
    end;




  }

  {


    II := 0;
    UniQueryAvaliacaoWeb.Open;
    UniQueryAvaliacaoWeb.First;

    //  ProgressBar1.max := UniQuery1.RecordCount;
    Gauge1.MaxValue := UniQueryAvaliacaoWeb.RecordCount;

    Edit1.Text := (IntToStr(UniQueryAvaliacaoWeb.RecordCount));

    //UniQuery1.First;
    //while not(UniQuery1.Eof) do
    for II := 1 to UniQueryAvaliacaoWeb.RecordCount do
    begin
    // Inc(I);


    UniQueryAvaliacaoWeb.Close;
    UniQueryAvaliacaoWeb.ParamByName('ParametroAno').Value := EdtAno.Text;
    UniQueryAvaliacaoWeb.ParamByName('parametroUNIDADE').Value := UniQueryUnidadeGAVAL_ID.Text;
    UniQueryAvaliacaoWeb.ParamByName('parametroTURMA').Value := UniQueryTurmaTURMA_ID.Text;


    UniQueryAvaliacaoWeb.Open;
    // if UniQuery1.FieldByName('avaliacao_id').AsInteger = UniQuery1.FieldByName('avaliacao_id').AsInteger then
    begin
    UniQueryAvaliacaoWeb.Edit;
    UniQueryAvaliacaoWeb.FieldByName('STATUS').ASINTEGER:= 1;
    UniQueryAvaliacaoWeb.Post;

    end;


    //  UniQuery1.FieldByName('AVALIACAO_ANO').Text :=FDQuery1.FieldByName('AVALIACAO_ANO').Text;






    // UniQuery1.FieldByName('AVALIACAO_NOTA').Text :=FDQuery1.FieldByName('AVALIACAO_NOTA').Text;
    //  UniQuery1.FieldByName('TURMA_ID').AsInteger :=FDQuery1.FieldByName('AVALIACAO_NOTA').AsInteger;
    //  UniQuery1.FieldByName('TURMA_ALUNO_ID').AsInteger :=FDQuery1.FieldByName('TURMA_ALUNO_ID').AsInteger;
    //   UniQuery1.FieldByName('DISCIPLINA_ID').AsInteger :=FDQuery1.FieldByName('DISCIPLINA_ID').AsInteger;
    // UniQuery1.FieldByName('GAVAL_ID').AsInteger :=FDQuery1.FieldByName('GAVAL_ID').AsInteger;
    // UniQuery1.FieldByName('REL_DIAGNOSTICO').Text :=FDQuery1.FieldByName('REL_DIAGNOSTICO').Text;
    //  UniQuery1.FieldByName('REL_FINAL').Text :=FDQuery1.FieldByName('REL_FINAL').Text;


    UniQueryAvaliacaoWeb.Post;
    // ProgressBar1.position := II;
    Gauge1.Progress:= II ;

    // ProgressBar1.Refresh;
    Gauge1.Refresh;

    Application.ProcessMessages;
    UniQueryAvaliacaoWeb.Next;
    end;

    //  ShowMessage('Inserção de notas fechadas com sucesso!');






  }

end;

procedure TForm1.Button7Click(Sender: TObject);
// var
// ANO,TURMA,UNIDADE:STRING;

begin
  // ANO:= '2018';
  // DISCIPLINA: = '101';
  // UNIDADE:= '101';
  // TURMA:= '236';

  RESTDWClientSQLTurmaWeb.close;
  RESTDWClientSQLTurmaWeb.ParamByName('parCURSO_ANO').Value := EdtAno.Text;
  RESTDWClientSQLTurmaWeb.Open;

  RESTDWClientSQLAvaliacaoWeb.close;
  RESTDWClientSQLAvaliacaoWeb.ParamByName('ParametroAno').Value := EdtAno.Text;
  RESTDWClientSQLAvaliacaoWeb.ParamByName('parametroUNIDADE').Value :=
    RESTDWClientSQLUnidadeWebGAVAL_ID.Text;
  RESTDWClientSQLAvaliacaoWeb.ParamByName('parametroTURMA').Value :=
    RESTDWClientSQLTurmaWebTURMA_ID.Text;
  RESTDWClientSQLAvaliacaoWeb.ParamByName('parametroDISCIPLINA').Value :=
    RESTDWClientSQLdisciplinaDISCIPLINA_ID.Text;

  RESTDWClientSQLAvaliacaoWeb.Open;
  // end;
  BEGIN
    ShowMessage('Carregado com sucesso!');
  END;
end;

procedure TForm1.DBGrid1DblClick(Sender: TObject);

VAR
  STATUS, vError: string;

begin
  RESTDWClientSQLAvaliacaoWebavaliacao_id.Text;

  STATUS := '1';

  IF RESTDWClientSQLAvaliacaoWebSTATUS.Text = STATUS THEN

    STATUS := 'Null';

  RESTDWClientSQLAvaliacaoUpdateWeb.close;
  RESTDWClientSQLAvaliacaoUpdateWeb.ParamByName('parametroAvaliacaoID').Value :=
    RESTDWClientSQLAvaliacaoWebavaliacao_id.Text;

  RESTDWClientSQLAvaliacaoUpdateWeb.ParamByName('parametroStatus').Value
    := STATUS;

  RESTDWClientSQLAvaliacaoUpdateWeb.ExecSQL(vError);
  // end;

  BEGIN

    if STATUS = '1' then

      ShowMessage('Edição de nota SgeMobile bloqueada com sucesso!')

    else

      ShowMessage('Edição de nota SgeMobile desbloqueda com sucesso!');

  END;

  RESTDWClientSQLAvaliacaoWeb.close;
  RESTDWClientSQLAvaliacaoWeb.ParamByName('ParametroAno').Value := EdtAno.Text;
  RESTDWClientSQLAvaliacaoWeb.ParamByName('parametroUNIDADE').Value :=
    RESTDWClientSQLUnidadeWebGAVAL_ID.Text;
  RESTDWClientSQLAvaliacaoWeb.ParamByName('parametroTURMA').Value :=
    RESTDWClientSQLTurmaWebTURMA_ID.Text;
  RESTDWClientSQLAvaliacaoWeb.ParamByName('parametroDISCIPLINA').Value :=
    RESTDWClientSQLdisciplinaDISCIPLINA_ID.Text;

  RESTDWClientSQLAvaliacaoWeb.Open;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

  ano := FormatDateTime('yyyy', Date);

  EdtAno.Text := ano;

  // Edtano.Text := ano;

  RESTDWClientSQLdisciplina.Active := True;
  RESTDWClientSQLAvaliacaoWeb.Active := True;

  RESTDWClientSQLTurmaWeb.Active := True;

  RESTDWClientSQLUnidadeWeb.Active := True;

  RESTDWClientSQLTurmaWeb.close;
  RESTDWClientSQLTurmaWeb.ParamByName('parCURSO_ANO').Value := EdtAno.Text;
  RESTDWClientSQLTurmaWeb.Open;

end;

end.
