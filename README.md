# Loopless Flux Sampling With Protein & Metabolite Constraints

Here we apply the CHRR algorithm to do flux sampling of metabolic models of different *Arabidopsis* genotypes exposed to different temperature treatments. 

## Experimental Data 
All of the experimental data used for the analyses are provided in the *ExperimentalData* folder. This contains the gas exchange (infrared gas analysis) and metabolite concentration (assay) data in `ExpData.xlsx` and the proteomics data in `ProteinConc.xlsx`. 

## Metabolite-Metabolite Graph
In order to find feasible metabolic paths from carbon uptake via rubisco to downstream fumarate accumulation we adapted the "min-path" methods outlined by [Ranganathan & Maranas (2010)](https://onlinelibrary.wiley.com/doi/abs/10.1002/biot.201000171) as outlined in `M-M-Graph.ipynb` in the *MetaboMetaboGraph* folder. 

## Flux Sampling 
We constructed metabolic models for Col-0 (wild-type) and *fum2* *Arabidopsis thaliana* plants (grown in control conditions and grown in control conditions with one week exposure to cold) using adaptations of the [Arnold and Nikoloski (2014) model](https://www.ncbi.nlm.nih.gov/pubmed/24808102). We then constrained the models with diurnal flux data calculated from the gas exchange, metabolite assay, and proteomics data sets as outline in the folder `FluxSampling` following the following analysis pipeline: 
- `SetUpModel.ipynb` ==> `ConstrainModel.ipynb` ==> `MakeModel.ipynb` to generate the models
- `ArabidopsisSampling.m` ==> `FluxSamplingAnalysis.ipynb` to generate and analyse flux sampling solutions 

## Contact

- helena.herrmann@manchester.ac.uk
- giles.johnson@manchester.ac.uk

## Journal Submission

We are currently preparing a journal submission. For the latest DOI of the software please see: *insert Zenodo link*.
