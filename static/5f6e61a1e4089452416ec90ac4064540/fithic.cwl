class: CommandLineTool
id: fithic.cwl
inputs:
- id: interactions
  doc: 'REQUIRED: interactions between fragment pairs are read from INTERSFILE'
  type: long
  inputBinding:
    prefix: --interactions
- id: fragments
  doc: 'REQUIRED: midpoints (or start indices) of the fragments are read from FRAGSFILE'
  type: string
  inputBinding:
    prefix: --fragments
- id: outdir
  doc: 'REQUIRED: where the output files will be written'
  type: string
  inputBinding:
    prefix: --outdir
- id: resolution
  doc: 'REQUIRED: If the files are fixed size, please supply the resolution of the
    dataset here; otherwise, please use a value of 0 if the data is not fixed size.'
  type: string
  inputBinding:
    prefix: --resolution
- id: biases
  doc: 'RECOMMENDED: biases calculated by ICE or KR norm for each locus are read from
    BIASFILE'
  type: string
  inputBinding:
    prefix: --biases
- id: passes
  doc: 'OPTIONAL: number of spline passes to run Default is 1'
  type: string
  inputBinding:
    prefix: --passes
- id: no_of_bins
  doc: 'OPTIONAL: number of equal-occupancy (count) bins. Default is 100'
  type: string
  inputBinding:
    prefix: --noOfBins
- id: mapp_ability_th_res
  doc: 'OPTIONAL: minimum number of hits per locus that has to exist to call it mappable.
    DEFAULT is 1.'
  type: string
  inputBinding:
    prefix: --mappabilityThres
- id: lib
  doc: 'OPTIONAL: Name of the library that is analyzed to be used for name of file
    prefixes . DEFAULT is fithic'
  type: string
  inputBinding:
    prefix: --lib
- id: upper_bound
  doc: "OPTIONAL: upper bound on the intra-chromosomal distance range (unit: base\
    \ pairs). DEFAULT no limit. STRONGLY suggested to have a limit for large genomes,\
    \ such as human/mouse. ex. '1000000, 5000000, etc.'"
  type: string
  inputBinding:
    prefix: --upperbound
- id: lower_bound
  doc: 'OPTIONAL: lower bound on the intra-chromosomal distance range (unit: base
    pairs). DEFAULT no limit. Suggested limit is 2x the resolution of the input files'
  type: string
  inputBinding:
    prefix: --lowerbound
- id: visual
  doc: 'OPTIONAL: use this flag for generating plots. DEFAULT is False.'
  type: boolean
  inputBinding:
    prefix: --visual
- id: contact_type
  doc: 'OPTIONAL: use this flag to determine which chromosomal regions to study (intraOnly,
    interOnly, All) DEFAULT is intraOnly'
  type: string
  inputBinding:
    prefix: --contactType
- id: bias_lower_bound
  doc: 'OPTIONAL: this flag is used to determine the lower bound of bias values to
    discard. DEFAULT is 0.5'
  type: string
  inputBinding:
    prefix: --biasLowerBound
- id: bias_upper_bound
  doc: 'OPTIONAL: this flag is used to determine the upper bound of bias values to
    discard. DEFAULT is 2'
  type: string
  inputBinding:
    prefix: --biasUpperBound
outputs: []
cwlVersion: v1.1
baseCommand:
- fithic
