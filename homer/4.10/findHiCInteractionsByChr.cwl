class: CommandLineTool
id: findHiCInteractionsByChr.pl.cwl
inputs:
- id: res
  doc: '<#> (resolution in bp, default: 2000)'
  type: boolean
  inputBinding:
    prefix: -res
- id: window
  doc: '<#> (window resolution in bp, i.e. superRes, default: 10000)'
  type: boolean
  inputBinding:
    prefix: -window
- id: mind_ist
  doc: '<#> (minimum interaction distance to search, default: superRes distance)'
  type: boolean
  inputBinding:
    prefix: -minDist
- id: max_dist
  doc: '<#> (minimum interaction distance to search, default: 10000000)'
  type: boolean
  inputBinding:
    prefix: -maxDist
- id: p_value
  doc: '<#> (pvalue cutoff, default: 0.01)'
  type: boolean
  inputBinding:
    prefix: -pvalue
- id: zscore
  doc: '<#> (z-score cutoff, default: 1.5)'
  type: boolean
  inputBinding:
    prefix: -zscore
- id: cpu
  doc: '<#> (number of CPUs to use, default: 1)'
  type: boolean
  inputBinding:
    prefix: -cpu
- id: ped
  doc: (Background HiC directory)
  type: string
  inputBinding:
    prefix: -ped
- id: std
  doc: '<#> (exclude regions with sequencing depth exceeding # std deviations, default:
    4)'
  type: boolean
  inputBinding:
    prefix: -std
- id: min
  doc: '<#> (exclude regions with sequencing depth less than this fraction of mean,
    default: 0.2)'
  type: boolean
  inputBinding:
    prefix: -min
outputs: []
cwlVersion: v1.1
baseCommand:
- findHiCInteractionsByChr.pl
