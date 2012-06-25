function self = delmeta(self,key)
%@tsmat/delcolmeta: delete metadata on a tsmat column: 
%
% >> self = delcolmeta(self,col,key)
%
% where
%       self is the input tsmat 
%        col is the column number
%        key is the name of the field to delete
%
% Example:
% >> self = delcoldata(self,'release')  
% >> self = delcoldata(self,{'release', 'label'})
%

%   BITS -  Banca d'Italia Time Series 
%   Copyright 2005-2012 Banca d'Italia - Area Ricerca Economica e Relazioni Internazionali
%
%   Author: Giovanni Veronese (giovanni.veronese@bancaditalia.it)
%           Emmanuele Somma   (emmanuele.somma@bancaditalia.it)
%           Area Ricerca Economica e Relazioni Internazionali 
%           Banca d'Italia
  
  if isfield(self.meta, key)
    self.meta = rmfield(self.meta,key);
  end
