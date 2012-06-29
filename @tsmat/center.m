function ret = center(self)
%@tsmat/center - overloaded center for tsmat objects:  deviation from
%respective column means
%

%   BITS -  Banca d'Italia Time Series 
%   Copyright 2005-2012 Banca d'Italia - Area Ricerca Economica e Relazioni Internazionali
%
%   Author: Giovanni Veronese (giovanni_DOT_veronese_AT_bancaditalia_DOT_it)
%           Emmanuele Somma   (emmanuele_DOT_somma_AT_bancaditalia_DOT_it)
%           Area Ricerca Economica e Relazioni Internazionali 
%           Banca d'Italia
%

        

  oper=mfilename;
  
  ret = TSMATCommonOneinput(self,oper,1);


