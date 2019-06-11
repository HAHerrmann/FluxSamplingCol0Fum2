%% Sampling from the Arnold model across genotypes and conditions 
rng(12)

cd /opt/gurobi810/linux64/matlab
gurobi_setup

cd /home/helena/cobratoolbox/
initCobraToolbox
changeCobraSolver('gurobi','all')

cd /home/helena/PhD/Year3/GilesPaper/

%% Reading in the models
ColControl = readCbModel('Arnold2014_WT_Cntl_Loopless.xml');
ColCold = readCbModel('Arnold2014_WT_cold_Loopless.xml');
FumControl = readCbModel('Arnold2014_fum2_Cntl_Loopless.xml');
FumCold = readCbModel('Arnold2014_fum2_Cold_Loopless.xml');
modls=[ColControl,ColCold,FumControl,FumCold];
modlsname=["ANmodel_Col0_Control_Loopless","ANmodel_Col0_Cold_Loopless","ANmodel_Fum2_Control_Loopless","ANmodel_Fum2_Cold_Loopless"];

%% Sampling
for i=[1,2,3,4]
    smpls = 10000;
    thns = 1000;
    many_samples(modls(i),smpls,thns,modlsname(i));
end 