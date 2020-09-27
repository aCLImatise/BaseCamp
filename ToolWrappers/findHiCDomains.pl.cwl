class: CommandLineTool
id: findHiCDomains.pl.cwl
inputs:
- id: in_or
  doc: "<output prefix> <directionality index bedgraph> [options]\n(Use the 2nd usage\
    \ to change parameters for domain calls after running)"
  type: long
  inputBinding:
    prefix: -or-
- id: in_res
  doc: '<#> (resolution in bp, default: 5000)'
  type: boolean
  inputBinding:
    prefix: -res
- id: in_window
  doc: '<#> (window resolution in bp, i.e. superRes, default: 25000)'
  type: boolean
  inputBinding:
    prefix: -window
- id: in_max_dist
  doc: '<#> (max distance from loci to check direction index, default: 1000000)'
  type: boolean
  inputBinding:
    prefix: -maxDist
- id: in_mind_ist
  doc: '<#> (minimum distance from loci to check direction index, default: 0)'
  type: boolean
  inputBinding:
    prefix: -minDist
- id: in_log
  doc: '(score direction index with log ratios, default: use linear ratios)'
  type: boolean
  inputBinding:
    prefix: -log
- id: in_std
  doc: '<#> (exclude regions with sequencing depth exceeding # std deviations, default:
    8)'
  type: boolean
  inputBinding:
    prefix: -std
- id: in_min
  doc: '<#> (exclude regions with sequencing depth less than this fraction of mean,
    default: 0.05)'
  type: boolean
  inputBinding:
    prefix: -min
- id: in_cpu
  doc: '<#> (number of CPUs to use, default: 1)'
  type: boolean
  inputBinding:
    prefix: -cpu
- id: in_min_index
  doc: '<#> (minimum index score to be considered for boundary (as zscore), default:
    0.5)'
  type: boolean
  inputBinding:
    prefix: -minIndex
- id: in_mine_xp_index
  doc: '<#> (minimum index score to be considered for boundary (as zscore), default:
    1e-05)'
  type: boolean
  inputBinding:
    prefix: -minExpIndex
- id: in_min_delta
  doc: '<#> (minimum change in dir-index between boundaries (as zscore), default:
    1)'
  type: boolean
  inputBinding:
    prefix: -minDelta
- id: in_minlength
  doc: '<#> (minimum domain length, default: 25000)'
  type: boolean
  inputBinding:
    prefix: -minLength
- id: in_max_error
  doc: '<#> (maximum variation in directionality index within domain, default: 0.25)'
  type: boolean
  inputBinding:
    prefix: -maxError
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- findHiCDomains.pl
