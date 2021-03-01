class: CommandLineTool
id: findHiCInteractionsByChr.pl_ls.cwl
inputs:
- id: in_res
  doc: '<#> (resolution in bp, default: 2000)'
  type: boolean?
  inputBinding:
    prefix: -res
- id: in_window
  doc: '<#> (window resolution in bp, i.e. superRes, default: 10000)'
  type: boolean?
  inputBinding:
    prefix: -window
- id: in_mind_ist
  doc: '<#> (minimum interaction distance to search, default: superRes distance)'
  type: boolean?
  inputBinding:
    prefix: -minDist
- id: in_max_dist
  doc: '<#> (minimum interaction distance to search, default: 10000000)'
  type: boolean?
  inputBinding:
    prefix: -maxDist
- id: in_p_value
  doc: '<#> (pvalue cutoff, default: 0.01)'
  type: boolean?
  inputBinding:
    prefix: -pvalue
- id: in_zscore
  doc: '<#> (z-score cutoff, default: 1.5)'
  type: boolean?
  inputBinding:
    prefix: -zscore
- id: in_cpu
  doc: '<#> (number of CPUs to use, default: 1)'
  type: boolean?
  inputBinding:
    prefix: -cpu
- id: in_ped
  doc: (Background HiC directory)
  type: Directory?
  inputBinding:
    prefix: -ped
- id: in_std
  doc: '<#> (exclude regions with sequencing depth exceeding # std deviations, default:
    4)'
  type: boolean?
  inputBinding:
    prefix: -std
- id: in_min
  doc: '<#> (exclude regions with sequencing depth less than this fraction of mean,
    default: 0.2)'
  type: boolean?
  inputBinding:
    prefix: -min
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- findHiCInteractionsByChr.pl
- ls
