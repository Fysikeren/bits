function tsy=annual(ts,varargin)
%ANNUAL aggregation of a tsmat/tseries object 
%    [Y]=ANNUAL(TS,opt1,opt2)
%    with opt1='pad' {default},opt2='ave' {default},
%    returns a Tqxm temporally aggregated series 
%    where ts (n x m) is a tseries of high frequency data
%    Optional type of temporal aggregation  is like 
%	 'sum' for sum (flow), 
%    'ave' for average (index) (which is the default) and 
%    'stock' for last element (stock) 
%
%	See also: consolidator.m, aggrts.m
 

%   Copyright 2005-2006 Claudia Miani, Emmanuele Somma, Giovanni Veronese (Servizio Studi Banca d'Italia)
%	accumarray(cumsum([1;diff(year(aa.dates)]),aa.matdata,[],@mean)
%	accumarray(cumsum([1;diff(year(aa.dates)]),aa.matdata)
%  

% Default Options Settings
opt1='nopad';		% Nopadding
opt2='ave'  ;	    % Mean of obs. in the quarter 		 
			 




if nargin==2
		opt1=varargin{1};
elseif nargin==3
		opt1=varargin{1};
		opt2=varargin{2};
elseif nargin>3
	error('too many input arguments')
end


metadata=getfullcolmeta(ts);
tsy=aggrts(ts,1,opt1,opt2);
tsy =  setfullcolmeta(tsy,metadata);
