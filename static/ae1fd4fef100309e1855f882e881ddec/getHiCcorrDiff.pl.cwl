class: CommandLineTool
id: getHiCcorrDiff.pl.cwl
inputs:
- id: in_res
  doc: '<#> (resolution in bp, default: 50000)'
  type: boolean
  inputBinding:
    prefix: -res
- id: in_window
  doc: '<#> (window resolution in bp, i.e. window size, default: 100000)'
  type: boolean
  inputBinding:
    prefix: -window
- id: in_corr_depth
  doc: '<#> (number of expected reads needed per data point when calculating correlation,
    default: 3)'
  type: boolean
  inputBinding:
    prefix: -corrDepth
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
- id: in_max_dist
  doc: '<#> (maximum distance around regions to calculate similarity metrics, default:
    none)'
  type: boolean
  inputBinding:
    prefix: -maxDist
- id: in_cpu
  doc: '<#> (number of CPUs to use, default: 1)'
  type: boolean
  inputBinding:
    prefix: -cpu
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- getHiCcorrDiff.pl
