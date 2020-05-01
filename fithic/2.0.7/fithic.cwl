#!/usr/bin/env cwl-runner

baseCommand:
- fithic
class: CommandLineTool
cwlVersion: v1.0
id: fithic
inputs:
- doc: 'REQUIRED: interactions between fragment pairs are read from INTERSFILE'
  id: interactions
  inputBinding:
    prefix: --interactions
  type: long
- doc: 'REQUIRED: midpoints (or start indices) of the fragments are read from FRAGSFILE'
  id: fragments
  inputBinding:
    prefix: --fragments
  type: string
- doc: 'REQUIRED: where the output files will be written'
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: 'REQUIRED: If the files are fixed size, please supply the resolution of the
    dataset here; otherwise, please use a value of 0 if the data is not fixed size.'
  id: resolution
  inputBinding:
    prefix: --resolution
  type: string
- doc: 'RECOMMENDED: biases calculated by ICE or KR norm for each locus are read from
    BIASFILE'
  id: biases
  inputBinding:
    prefix: --biases
  type: string
- doc: 'OPTIONAL: number of spline passes to run Default is 1'
  id: passes
  inputBinding:
    prefix: --passes
  type: string
- doc: 'OPTIONAL: number of equal-occupancy (count) bins. Default is 100'
  id: no_of_bins
  inputBinding:
    prefix: --noOfBins
  type: string
- doc: 'OPTIONAL: minimum number of hits per locus that has to exist to call it mappable.
    DEFAULT is 1.'
  id: mapp_ability_th_res
  inputBinding:
    prefix: --mappabilityThres
  type: string
- doc: 'OPTIONAL: Name of the library that is analyzed to be used for name of file
    prefixes . DEFAULT is fithic'
  id: lib
  inputBinding:
    prefix: --lib
  type: string
- doc: "OPTIONAL: upper bound on the intra-chromosomal distance range (unit: base\
    \ pairs). DEFAULT no limit. STRONGLY suggested to have a limit for large genomes,\
    \ such as human/mouse. ex. '1000000, 5000000, etc.'"
  id: upper_bound
  inputBinding:
    prefix: --upperbound
  type: string
- doc: 'OPTIONAL: lower bound on the intra-chromosomal distance range (unit: base
    pairs). DEFAULT no limit. Suggested limit is 2x the resolution of the input files'
  id: lower_bound
  inputBinding:
    prefix: --lowerbound
  type: string
- doc: 'OPTIONAL: use this flag for generating plots. DEFAULT is False.'
  id: visual
  inputBinding:
    prefix: --visual
  type: boolean
- doc: 'OPTIONAL: use this flag to determine which chromosomal regions to study (intraOnly,
    interOnly, All) DEFAULT is intraOnly'
  id: contact_type
  inputBinding:
    prefix: --contactType
  type: string
- doc: 'OPTIONAL: this flag is used to determine the lower bound of bias values to
    discard. DEFAULT is 0.5'
  id: bias_lower_bound
  inputBinding:
    prefix: --biasLowerBound
  type: string
- doc: 'OPTIONAL: this flag is used to determine the upper bound of bias values to
    discard. DEFAULT is 2'
  id: bias_upper_bound
  inputBinding:
    prefix: --biasUpperBound
  type: string
