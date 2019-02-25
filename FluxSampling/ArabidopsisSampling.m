%% Sampling from the Arnold model across genotypes and conditions 
rng(12)

cd /opt/gurobi810/linux64/matlab
gurobi_setup

cd /home/helena/cobratoolbox/
initCobraToolbox
changeCobraSolver('gurobi','all')

cd /home/helena/PhD/Year3/GilesPaper/

%% Reading in the models
ColControl = readCbModel('Arnold2014_WT_Cntl.xml');
ColCold = readCbModel('Arnold2014_WT_Cold.xml');
FumControl = readCbModel('Arnold2014_M_Cntl.xml');
FumCold = readCbModel('Arnold2014_M_Cold.xml');

modls=[ColControl,ColCold,FumControl,FumCold];
modlsname=["ANmodel_Col0_Control","ANmodel_Col0_Cold","ANmodel_Fum2_Control","ANmodel_Fum2_Cold"];

%% Sampling
for i=[1,2,3,4]
    smpls = 100000;
    thns = 10000;
    many_samples(modls(i),smpls,thns,modlsname(i));
end 