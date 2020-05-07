class: CommandLineTool
id: finestructure.cwl
inputs:
- id: z
  doc: 1000 datafile.csv resfile.xml Infers population structure (-m omcmc) from datafile.csv
    which contains 2 irrelevent lines (-i 2) with row (-X) and column (-Y) names,
    using the F model with a global F and Delta (-B 4) using Gamma(2,0.01) distributions.
    100000 burn in steps are used (-x) and 100000 further iterations are sampled (-y)
    keeping every 1000th sample (-z).
  type: boolean
  inputBinding:
    prefix: -z
- id: z
  doc: 1000 datafile.csv resmsfile.xml admixfile.xml Perform admixture (-m admixiture)
    MCMC using the minimum state  and parameters found as above.
  type: boolean
  inputBinding:
    prefix: -z
outputs: []
cwlVersion: v1.1
baseCommand:
- finestructure
