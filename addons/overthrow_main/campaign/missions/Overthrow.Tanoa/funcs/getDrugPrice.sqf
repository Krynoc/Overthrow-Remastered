private ["_town","_cls","_cost","_baseprice","_stability"];

_town = _this select 0;
_cls = _this select 1;
_price = 0;
	
_cost = cost getVariable _cls;
_baseprice = _cost select 0;

_stability = (server getVariable format["stability%1",_town]) / 100;
_population = server getVariable format["population%1",_town];
if(_population > 500) then {_population = 500};
_population = (_population / 500);

_price = _baseprice + _baseprice * (_stability * _population);

round(_price)