# Loopless Flux Sampling With Protein & Metabolite Constraints

Here we apply the CHRR algorithm to do flux sampling of metabolic models of different *Arabidopsis* genotypes exposed to different temperature treatments. 

## 1. Experimental Data 
All of the experimental data used for the analyses are provided in the *ExperimentalData* folder. This contains the gas exchange (infrared gas analysis) and metabolite concentration (assay) data in `ExpData.xlsx` and the proteomics data in `ProteinConc.xlsx`. 

## 2. Metabolite-Metabolite Graph
In order to find feasible metabolic paths from carbon uptake via rubisco to downstream fumarate accumulation we adapted the "min-path" methods outlined by [Ranganathan & Maranas (2010)](https://onlinelibrary.wiley.com/doi/abs/10.1002/biot.201000171) as outlined in `M-M-Graph.ipynb` in the *MetaboMetaboGraph* folder. 

## 3. Flux Sampling 

#### 3.1 Scripts
We constructed metabolic models for Col-0 (wild-type) and *fum2* *Arabidopsis thaliana* plants (grown in control conditions and grown in control conditions with one week exposure to cold) using adaptations of the [Arnold and Nikoloski (2014) model](https://www.ncbi.nlm.nih.gov/pubmed/24808102). We then constrained the models with diurnal flux data calculated from the gas exchange, metabolite assay, and proteomics data sets as outline in the folder `FluxSampling` following the following analysis pipeline: 
- `SetUpModel.ipynb` ==> `ConstrainModel.ipynb` ==> `MakeModel.ipynb` to generate the models
- `ArabidopsisSampling.m` ==> `FluxSamplingAnalysis.ipynb` to generate and analyse flux sampling solutions 

#### 3.2 Models
All models with the applied constraints, used for generating the flux sampling results, are available in the *FluxSampling* folder. The original [Arnold and Nikoloski (2014) model](https://www.ncbi.nlm.nih.gov/pubmed/24808102) was adapted to include cyclic electron transport and diurnal storage of malate, fumarate and starch. 

For those who do not wish to access the code, we have provided a list of all metabolic reactions, their identifiers and their set lower and upper bounds. The 4 files (for the two conditions and the two genotypes) can be found in the `FluxSampling` folder of this repository. 

#### 3.3 Results 
All flux sampling distributions for all of the reaction in each of the models were plotted to pdf files and can be found in the *FluxSampling* folder. 

## 4. Supplementary Information 
A summary of the major carbon fluxes is avaiable in the *SupplementaryMaterials* folder.

## Contact

- helena.herrmann@manchester.ac.uk
- giles.johnson@manchester.ac.uk

## Journal Submission

We are currently preparing a journal submission. For the latest DOI of the software please see: 10.5281/zenodo.3366934

## Conference Attendance
Preliminary results for this work were presentation at the SEB 2019 conference in Seville in a talk titled "Using metabolic modelling to understand the limitations to photosynthesis under changing environmental conditions". 
