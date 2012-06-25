function ret = abs(self)
%@tsmat/abs -  Overloaded operation for tsmat objects: absolute value
%
% >> t1 = tsmat(1968,10,12,rand(12,3))
% >> tabs = abs(t1)
% 


%   BITS -  Banca d'Italia Time Series 
%   Copyright 2005-2012 Banca d'Italia - Area Ricerca Economica e Relazioni Internazionali
%
%   Author: Giovanni Veronese (giovanni.veronese@bancaditalia.it)
%           Emmanuele Somma   (emmanuele.somma@bancaditalia.it)
%           Area Ricerca Economica e Relazioni Internazionali 
%           Banca d'Italia
%

  oper=mfilename;
  if nargin==1
	ret = TSMATCommonOneinput(self,oper,1);
  else
    error(['@' mfilename('class') '\' mfilename '::invalid number of inputs'])
  end
