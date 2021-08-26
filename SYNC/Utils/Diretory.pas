unit Diretory;

interface
type
  TDiretory = class(TObject)
        class function ServidorWEB:String;
  end;

implementation

{ TDiretoryt }

class function TDiretory.ServidorWEB: String;
begin
  Result :=  'http://conecty.com/webapi/api/meuprojeto/institute/';
end;

end.
