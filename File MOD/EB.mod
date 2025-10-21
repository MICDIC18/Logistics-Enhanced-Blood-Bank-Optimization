set hospitals;
set origins within {hospitals};
set destinations in hospitals diff origins;
set links within (hospitals cross hospitals);

set BloodTypes;

param cost{links};
param DemSup {hospitals, BloodTypes};

var ship{links, BloodTypes}>=0;

param fixed_cost:=125;
param global_capacity:=1000;
param budget:=24000;

var Use{links} binary;

minimize total_cost: sum{(i,j) in links, k in BloodTypes} cost[i,j]*ship[i,j,k]*Use[i,j];

subject to bank: sum{(i,j) in links}fixed_cost*Use[i,j] + sum{(i,j) in links, k in BloodTypes} cost[i,j]*ship[i,j,k] <= budget;

subject to supply{i in origins, p in BloodTypes}: 
-sum{(i,k) in links}ship[i,k,p]<=DemSup[i,p];

subject to demand{i in destinations, p in BloodTypes}: 
sum{(j,i) in links}ship[j,i,p] - sum{(i,k) in links}ship[i,k,p]==DemSup[i,p];

subject to capacity{(i,j) in links}: sum{k in BloodTypes}ship[i,j,k]<=global_capacity*Use[i,j]

