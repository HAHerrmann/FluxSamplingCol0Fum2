%% Sampling from the Arnold model across genotypes and conditions 
rng(12)

cd /opt/gurobi810/linux64/matlab
gurobi_setup

cd /home/helena/cobratoolbox/
initCobraToolbox
changeCobraSolver('gurobi','all')

cd /home/helena/PhD/Year3/GilesPaper/

%% Reading in the models
ColControl = readCbModel('Arnold2014_WT_Cntl_LooplessRminP.xml');
ColCold = readCbModel('Arnold2014_WT_cold_LooplessRminP.xml');
FumControl = readCbModel('Arnold2014_fum2_Cntl_LooplessRminP.xml');
FumCold = readCbModel('Arnold2014_fum2_Cold_LooplessRminP.xml');
modls=[ColControl,ColCold,FumControl,FumCold];
modlsname=["ANmodel_Col0_Control_LooplessRminP","ANmodel_Col0_Cold_LooplessRminP","ANmodel_Fum2_Control_LooplessRminP","ANmodel_Fum2_Cold_LooplessRminP"];

%% Sampling
for i=[1,2,3,4]
    smpls = 100000;
    thns = 10000;
    many_samples(modls(i),smpls,thns,modlsname(i));
end 