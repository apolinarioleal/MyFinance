object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'SYNC 1.1.2'
  ClientHeight = 476
  ClientWidth = 819
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 686
    Top = 410
    Width = 19
    Height = 13
    Caption = 'Ano'
  end
  object Label3: TLabel
    Left = 559
    Top = 410
    Width = 56
    Height = 13
    Caption = 'Quantidade'
  end
  object Button6: TButton
    Left = 48
    Top = 428
    Width = 145
    Height = 25
    Caption = 'ATUALIZAR SGE DESKTOP'
    TabOrder = 0
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 48
    Top = 397
    Width = 145
    Height = 25
    Caption = 'CARREGAR DO SGE MOBILE'
    TabOrder = 1
    OnClick = Button7Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 819
    Height = 257
    Align = alTop
    DataSource = DSAvaliacaoWeb
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 257
    Width = 819
    Height = 17
    Margins.Top = 10
    Align = alTop
    TabOrder = 3
  end
  object Filtro: TGroupBox
    Left = 0
    Top = 274
    Width = 819
    Height = 80
    Align = alTop
    Caption = 'Filtro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object Lbturma: TLabel
      Left = 3
      Top = 19
      Width = 38
      Height = 16
      Caption = 'Turma'
    end
    object Label1: TLabel
      Left = 263
      Top = 19
      Width = 46
      Height = 16
      Caption = 'Unidade'
    end
    object Label4: TLabel
      Left = 543
      Top = 19
      Width = 53
      Height = 16
      Caption = 'Disciplina'
    end
    object DBLookupComboBoxUnidade: TDBLookupComboBox
      Left = 263
      Top = 41
      Width = 274
      Height = 24
      KeyField = 'GAVAL_ID'
      ListField = 'GAVAL_DESCRICAO'
      ListSource = DSUnidadeWeb
      TabOrder = 0
    end
    object DBLookupComboBoxTurma: TDBLookupComboBox
      Left = 3
      Top = 41
      Width = 254
      Height = 24
      KeyField = 'TURMA_ID'
      ListField = 'CAMPO_TURMA'
      ListSource = DSTurmaWeb
      TabOrder = 1
    end
    object DBLookupComboBoxDisciplina: TDBLookupComboBox
      Left = 543
      Top = 41
      Width = 267
      Height = 24
      KeyField = 'DISCIPLINA_ID'
      ListField = 'DISCIPLINA_DESCRICAO'
      ListSource = DSDisciplinaWeb
      TabOrder = 2
    end
  end
  object EdtAno: TEdit
    Left = 684
    Top = 428
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit1: TEdit
    Left = 559
    Top = 429
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 6
  end
  object Button1: TButton
    Left = 199
    Top = 397
    Width = 210
    Height = 25
    Caption = 'BLOQUEAR SGE MOBILE DISCIPLINA  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = Button1Click
  end
  object BitBtn1: TBitBtn
    Left = 478
    Top = 428
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 8
    OnClick = BitBtn1Click
  end
  object Button2: TButton
    Left = 199
    Top = 428
    Width = 210
    Height = 25
    Caption = 'DESBLOQUEAR SGE MOBILE DISCIPLINA  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = Button2Click
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 352
    Top = 344
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 464
    Top = 344
  end
  object FDQueryAvaliacaoDesktop: TFDQuery
    Connection = FDConnectionDesktop
    SQL.Strings = (
      'select * from avaliacao'
      'where  avaliacao_id= :Parametroavaliacao_id'
      ''
      ''
      '')
    Left = 72
    Top = 344
    ParamData = <
      item
        Name = 'PARAMETROAVALIACAO_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQueryAvaliacaoDesktopAVALIACAO_ID: TIntegerField
      FieldName = 'AVALIACAO_ID'
      Origin = 'AVALIACAO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryAvaliacaoDesktopAVALIACAO_ANO: TIntegerField
      FieldName = 'AVALIACAO_ANO'
      Origin = 'AVALIACAO_ANO'
    end
    object FDQueryAvaliacaoDesktopAVALIACAO_NOTA: TCurrencyField
      FieldName = 'AVALIACAO_NOTA'
      Origin = 'AVALIACAO_NOTA'
    end
    object FDQueryAvaliacaoDesktopTURMA_ID: TIntegerField
      FieldName = 'TURMA_ID'
      Origin = 'TURMA_ID'
    end
    object FDQueryAvaliacaoDesktopTURMA_ALUNO_ID: TIntegerField
      FieldName = 'TURMA_ALUNO_ID'
      Origin = 'TURMA_ALUNO_ID'
    end
    object FDQueryAvaliacaoDesktopDISCIPLINA_ID: TIntegerField
      FieldName = 'DISCIPLINA_ID'
      Origin = 'DISCIPLINA_ID'
    end
    object FDQueryAvaliacaoDesktopGAVAL_ID: TIntegerField
      FieldName = 'GAVAL_ID'
      Origin = 'GAVAL_ID'
    end
    object FDQueryAvaliacaoDesktopREL_DIAGNOSTICO: TMemoField
      FieldName = 'REL_DIAGNOSTICO'
      Origin = 'REL_DIAGNOSTICO'
      BlobType = ftMemo
    end
    object FDQueryAvaliacaoDesktopREL_FINAL: TMemoField
      FieldName = 'REL_FINAL'
      Origin = 'REL_FINAL'
      BlobType = ftMemo
    end
  end
  object DSTurmaWeb: TDataSource
    DataSet = RESTDWClientSQLTurmaWeb
    Left = 440
    Top = 184
  end
  object DSUnidadeWeb: TDataSource
    DataSet = RESTDWClientSQLUnidadeWeb
    Left = 440
    Top = 120
  end
  object FDConnectionDesktop: TFDConnection
    Params.Strings = (
      'Database=C:\SGE\banco\SGE.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=IB')
    LoginPrompt = False
    Left = 208
    Top = 344
  end
  object DSDisciplinaWeb: TDataSource
    DataSet = RESTDWClientSQLdisciplina
    Left = 176
    Top = 112
  end
  object RESTDWClientSQLdisciplina: TRESTDWClientSQL
    Active = False
    AutoCalcFields = False
    Filtered = False
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    BinaryCompatibleMode = False
    MasterCascadeDelete = False
    BinaryRequest = False
    Datapacks = -1
    DataCache = False
    MassiveType = mtMassiveCache
    Params = <>
    DataBase = RESTDWDataBase1
    SQL.Strings = (
      'SELECT * FROM DISCIPLINA')
    CacheUpdateRecords = True
    AutoCommitData = True
    AutoRefreshAfterCommit = True
    RaiseErrors = True
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 54
    Top = 114
    object RESTDWClientSQLdisciplinaDISCIPLINA_ID: TIntegerField
      FieldName = 'DISCIPLINA_ID'
      Required = True
    end
    object RESTDWClientSQLdisciplinaDISCIPLINA_DESCRICAO: TStringField
      FieldName = 'DISCIPLINA_DESCRICAO'
      Size = 80
    end
    object RESTDWClientSQLdisciplinaDISCIPLINA_ASEG: TStringField
      FieldName = 'DISCIPLINA_ASEG'
      Size = 1
    end
    object RESTDWClientSQLdisciplinaESTABELECIMENTO_ID: TIntegerField
      FieldName = 'ESTABELECIMENTO_ID'
    end
    object RESTDWClientSQLdisciplinaDISCIPLINA_MAS: TIntegerField
      FieldName = 'DISCIPLINA_MAS'
    end
    object RESTDWClientSQLdisciplinaDISCIPLINA_DSAS: TStringField
      FieldName = 'DISCIPLINA_DSAS'
      Size = 1
    end
    object RESTDWClientSQLdisciplinaDISCIPLINA_INTER: TIntegerField
      FieldName = 'DISCIPLINA_INTER'
    end
    object RESTDWClientSQLdisciplinaDISCIPLINA_PESO: TIntegerField
      FieldName = 'DISCIPLINA_PESO'
    end
    object RESTDWClientSQLdisciplinaDISCIPLINA_ASINTER: TStringField
      FieldName = 'DISCIPLINA_ASINTER'
      Size = 1
    end
    object RESTDWClientSQLdisciplinaDISCIPLINA_QUADRO: TStringField
      FieldName = 'DISCIPLINA_QUADRO'
      Size = 1
    end
    object RESTDWClientSQLdisciplinaDISCIPLINA_NOMECURTO: TStringField
      FieldName = 'DISCIPLINA_NOMECURTO'
      Size = 10
    end
  end
  object DSAvaliacaoWeb: TDataSource
    DataSet = RESTDWClientSQLAvaliacaoWeb
    Left = 176
    Top = 176
  end
  object RESTDWClientSQLAvaliacaoWeb: TRESTDWClientSQL
    Active = True
    AutoCalcFields = False
    Filtered = False
    FieldDefs = <
      item
        Name = 'avaliacao_id'
        DataType = ftInteger
      end
      item
        Name = 'DISCIPLINA_ID'
        DataType = ftInteger
      end
      item
        Name = 'DISCIPLINA_DESCRICAO'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'turma_aluno_id'
        DataType = ftInteger
      end
      item
        Name = 'pfisica_nome'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'avaliacao_nota'
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = 'rel_diagnostico'
        DataType = ftMemo
      end
      item
        Name = 'rel_final'
        DataType = ftMemo
      end
      item
        Name = 'STATUS'
        DataType = ftInteger
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    BinaryCompatibleMode = False
    MasterCascadeDelete = False
    BinaryRequest = False
    Datapacks = -1
    DataCache = False
    MassiveType = mtMassiveCache
    Params = <
      item
        DataType = ftString
        Name = 'ParametroAno'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ParametroTurma'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ParametroUnidade'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ParametroDisciplina'
        ParamType = ptInput
      end>
    DataBase = RESTDWDataBase1
    SQL.Strings = (
      
        'SELECT av.avaliacao_id,AV.DISCIPLINA_ID,D.DISCIPLINA_DESCRICAO, ' +
        'av.turma_aluno_id,P.pfisica_nome, AV.avaliacao_nota,av.rel_diagn' +
        'ostico,av.rel_final,av.STATUS'
      ''
      'FROM  AVALIACAO AV'
      ''
      'INNER JOIN DISCIPLINA D ON D.DISCIPLINA_ID = AV.DISCIPLINA_ID'
      'INNER JOIN TURMA_ALUNO T ON t.turma_aluno_id = av.turma_aluno_id'
      'INNER JOIN ALUNO A ON A.aluno_id = t.aluno_id'
      'INNER JOIN TURMA TU ON TU.turma_id = T.turma_id'
      'INNER JOIN pfisica P ON P.pfisica_id = A.pfisica_id'
      ''
      ''
      ''
      'WHERE AV.avaliacao_ano = :ParametroAno'
      'AND TU.TURMA_ID = :ParametroTurma'
      'AND AV.gaval_id = :ParametroUnidade '
      'AND D.DISCIPLINA_ID = :ParametroDisciplina'
      ''
      ''
      'ORDER BY P.PFISICA_NOME')
    CacheUpdateRecords = True
    AutoCommitData = True
    AutoRefreshAfterCommit = True
    RaiseErrors = True
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 54
    Top = 178
    object RESTDWClientSQLAvaliacaoWebavaliacao_id: TIntegerField
      FieldName = 'avaliacao_id'
      Required = True
    end
    object RESTDWClientSQLAvaliacaoWebDISCIPLINA_ID: TIntegerField
      FieldName = 'DISCIPLINA_ID'
    end
    object RESTDWClientSQLAvaliacaoWebDISCIPLINA_DESCRICAO: TStringField
      FieldName = 'DISCIPLINA_DESCRICAO'
      Size = 80
    end
    object RESTDWClientSQLAvaliacaoWebturma_aluno_id: TIntegerField
      FieldName = 'turma_aluno_id'
    end
    object RESTDWClientSQLAvaliacaoWebpfisica_nome: TStringField
      FieldName = 'pfisica_nome'
      Size = 100
    end
    object RESTDWClientSQLAvaliacaoWebavaliacao_nota: TFloatField
      FieldName = 'avaliacao_nota'
    end
    object RESTDWClientSQLAvaliacaoWebrel_diagnostico: TMemoField
      FieldName = 'rel_diagnostico'
      BlobType = ftMemo
    end
    object RESTDWClientSQLAvaliacaoWebrel_final: TMemoField
      FieldName = 'rel_final'
      BlobType = ftMemo
    end
    object RESTDWClientSQLAvaliacaoWebSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
  end
  object RESTDWClientSQLAvaliacaoUpdateWeb: TRESTDWClientSQL
    Active = False
    AutoCalcFields = False
    Filtered = False
    FieldDefs = <
      item
        Name = 'avaliacao_id'
        DataType = ftInteger
      end
      item
        Name = 'turma_aluno_id'
        DataType = ftInteger
      end
      item
        Name = 'pfisica_nome'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'avaliacao_nota'
        DataType = ftFloat
      end
      item
        Name = 'rel_diagnostico'
        DataType = ftMemo
      end
      item
        Name = 'rel_final'
        DataType = ftMemo
      end
      item
        Name = 'STATUS'
        DataType = ftInteger
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'AVALIACAO'
    StoreDefs = True
    BinaryCompatibleMode = False
    MasterCascadeDelete = False
    BinaryRequest = False
    Datapacks = -1
    DataCache = False
    MassiveType = mtMassiveCache
    Params = <
      item
        DataType = ftString
        Name = 'parametroStatus'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ParametroAno'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'parametroUNIDADE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'parametroTURMA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'parametroDisciplina'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'parametroAvaliacaoID'
        ParamType = ptInput
      end>
    DataBase = RESTDWDataBase1
    SQL.Strings = (
      'update sge.avaliacao'
      'set status = :parametroStatus'
      ''
      'WHERE AVALIACAO_ANO = :ParametroAno'
      
        'AND (GAVAL_ID = :parametroUNIDADE) AND (TURMA_ID = :parametroTUR' +
        'MA ) '
      
        'AND (DISCIPLINA_ID = :parametroDisciplina ) OR (AVALIACAO_ID = :' +
        'parametroAvaliacaoID)'
      ''
      ''
      '')
    UpdateTableName = 'AVALIACAO'
    CacheUpdateRecords = True
    AutoCommitData = True
    AutoRefreshAfterCommit = True
    RaiseErrors = True
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 622
    Top = 178
    object RESTDWClientSQLAvaliacaoUpdateWebAVALIACAO_ID: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'AVALIACAO_ID'
      KeyFields = 'AVALIACAO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Calculated = True
    end
  end
  object RESTDWClientSQLTurmaWeb: TRESTDWClientSQL
    Active = True
    AutoCalcFields = False
    Filtered = False
    FieldDefs = <
      item
        Name = 'SERIE_ID'
        DataType = ftInteger
      end
      item
        Name = 'CURSO_ANO'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'TURMA_ID'
        DataType = ftInteger
      end
      item
        Name = 'PERIODO_ID'
        DataType = ftInteger
      end
      item
        Name = 'SERIE_VALOR'
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = 'SERIE_QTD_PARCELA'
        DataType = ftSmallint
      end
      item
        Name = 'SERIE_VLR_PARCELA'
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = 'TURMA_DESCRICAO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CAMPO_TURMA'
        DataType = ftString
        Size = 142
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    BinaryCompatibleMode = False
    MasterCascadeDelete = False
    BinaryRequest = False
    Datapacks = -1
    DataCache = False
    MassiveType = mtMassiveCache
    Params = <
      item
        DataType = ftString
        Name = 'parCURSO_ANO'
        ParamType = ptInput
      end>
    DataBase = RESTDWDataBase1
    SQL.Strings = (
      'SELECT'
      'S.SERIE_ID,'
      'C.CURSO_ANO,'
      'T.TURMA_ID,'
      'P.PERIODO_ID,'
      'S.SERIE_VALOR,'
      'S.SERIE_QTD_PARCELA,'
      'S.SERIE_VLR_PARCELA,'
      'T.TURMA_DESCRICAO,'
      
        'concat(S.SERIE_DESCRICAO,'#39' - '#39',C.CURSO_DESCRICAO,'#39' - '#39',T.TURMA_D' +
        'ESCRICAO,'#39' - '#39',P.PERIODO_DESCRICAO)  as CAMPO_TURMA'
      ''
      ''
      ''
      ''
      ''
      ''
      'FROM'
      'CURSO C'
      'INNER JOIN SERIE S ON S.CURSO_ID = C.CURSO_ID'
      ''
      ''
      ''
      ''
      ''
      'INNER JOIN TURMA T ON T.SERIE_ID = S.SERIE_ID'
      ''
      'INNER JOIN PERIODO P ON T.PERIODO_ID = P.PERIODO_ID'
      ''
      ''
      'where C.CURSO_ANO = :parCURSO_ANO'
      'AND ( C.CURSO_DESCRICAO = '#39'ENSINO FUNDAMENTAL I'#39
      'OR  C.CURSO_DESCRICAO = '#39'ENSINO FUNDAMENTAL II'#39' )'
      ''
      'order by S.SERIE_ID'
      ''
      '')
    UpdateTableName = 'AVALIACAO'
    CacheUpdateRecords = True
    AutoCommitData = True
    AutoRefreshAfterCommit = True
    RaiseErrors = True
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 318
    Top = 186
    object RESTDWClientSQLTurmaWebSERIE_ID: TIntegerField
      FieldName = 'SERIE_ID'
      Required = True
    end
    object RESTDWClientSQLTurmaWebTURMA_ID: TIntegerField
      FieldName = 'TURMA_ID'
      Required = True
    end
    object RESTDWClientSQLTurmaWebSERIE_VALOR: TFloatField
      FieldName = 'SERIE_VALOR'
    end
    object RESTDWClientSQLTurmaWebSERIE_QTD_PARCELA: TSmallintField
      FieldName = 'SERIE_QTD_PARCELA'
    end
    object RESTDWClientSQLTurmaWebSERIE_VLR_PARCELA: TFloatField
      FieldName = 'SERIE_VLR_PARCELA'
    end
    object RESTDWClientSQLTurmaWebTURMA_DESCRICAO: TStringField
      FieldName = 'TURMA_DESCRICAO'
      Size = 10
    end
    object RESTDWClientSQLTurmaWebCAMPO_TURMA: TStringField
      FieldName = 'CAMPO_TURMA'
      Size = 142
    end
    object RESTDWClientSQLTurmaWebCURSO_ANO: TStringField
      FieldName = 'CURSO_ANO'
      Size = 11
    end
    object RESTDWClientSQLTurmaWebPERIODO_ID: TIntegerField
      FieldName = 'PERIODO_ID'
      Required = True
    end
  end
  object RESTDWClientSQLUnidadeWeb: TRESTDWClientSQL
    Active = True
    AutoCalcFields = False
    Filtered = False
    FieldDefs = <
      item
        Name = 'GAVAL_ID'
        DataType = ftInteger
      end
      item
        Name = 'GAVAL_DESCRICAO'
        DataType = ftString
        Size = 80
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    BinaryCompatibleMode = False
    MasterCascadeDelete = False
    BinaryRequest = False
    Datapacks = -1
    DataCache = False
    MassiveType = mtMassiveCache
    Params = <>
    DataBase = RESTDWDataBase1
    SQL.Strings = (
      'SELECT * FROM GAVAL'
      
        'WHERE gaval_id IN (101,102,103,105,107,106) ORDER BY FIELD(gaval' +
        '_id,101,102,103,107,105,106); '
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    UpdateTableName = 'AVALIACAO'
    CacheUpdateRecords = True
    AutoCommitData = True
    AutoRefreshAfterCommit = True
    RaiseErrors = True
    ActionCursor = crSQLWait
    ReflectChanges = False
    Left = 310
    Top = 114
    object RESTDWClientSQLUnidadeWebGAVAL_ID: TIntegerField
      FieldName = 'GAVAL_ID'
      Required = True
    end
    object RESTDWClientSQLUnidadeWebGAVAL_DESCRICAO: TStringField
      FieldName = 'GAVAL_DESCRICAO'
      Size = 80
    end
  end
  object RESTDWDataBase1: TRESTDWDataBase
    Active = True
    Compression = True
    CriptOptions.Use = False
    CriptOptions.Key = 'RDWBASEKEY256'
    MyIP = '192.168.0.10'
    AuthenticationOptions.AuthorizationOption = rdwAONone
    Proxy = False
    ProxyOptions.Port = 8888
    PoolerService = '192.168.0.10'
    PoolerPort = 8082
    PoolerName = 'TServerMethodDM.RESTDWPoolerFD'
    StateConnection.AutoCheck = False
    StateConnection.InTime = 1000
    RequestTimeOut = 10000
    ConnectTimeOut = 3000
    EncodeStrings = True
    Encoding = esUtf8
    StrsTrim = False
    StrsEmpty2Null = False
    StrsTrim2Len = True
    HandleRedirects = False
    RedirectMaximum = 0
    ParamCreate = True
    FailOver = False
    FailOverConnections = <>
    FailOverReplaceDefaults = False
    ClientConnectionDefs.Active = False
    UserAgent = 
      'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, l' +
      'ike Gecko) Chrome/41.0.2227.0 Safari/537.36'
    Left = 536
    Top = 72
  end
end
