class: CommandLineTool
id: wigchoose.pl.cwl
inputs:
- id: min_cov
  doc: 'minimal coverage for each position of the interval (default: 1)'
  type: string
  inputBinding:
    prefix: --mincov
- id: min_re_lcov
  doc: 'minimal relative coverage (0 <= f <= 1, default: 0)'
  type: string
  inputBinding:
    prefix: --minrelcov
- id: max_gap
  doc: 'coverage gaps of maximal this length each are allowed (default: 0)'
  type: string
  inputBinding:
    prefix: --maxgap
outputs: []
cwlVersion: v1.1
baseCommand:
- wigchoose.pl
