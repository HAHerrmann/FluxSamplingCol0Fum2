### Avoid futile cycles in the model
- previously we were unable to determine how the flux through the export reactions from the chloroplast to the cytosol changed because these reactions were undergoing utile cycles in the model and therefore displayed uniform flux distributions across the entire feasible range
- here we have taken (loopless FBA)[https://cobrapy.readthedocs.io/en/latest/loopless.html] with cytosolic fumarate production via malate as the objective function
- all reactions which were determined to be zero in the loopless FBA approach were also set to zero for the flux sampling 
