class: CommandLineTool
id: wigchoose.pl.cwl
inputs:
- id: in_min_cov
  doc: 'minimal coverage for each position of the interval (default: 1)'
  type: long?
  inputBinding:
    prefix: --mincov
- id: in_min_re_lcov
  doc: 'minimal relative coverage (0 <= f <= 1, default: 0)'
  type: long?
  inputBinding:
    prefix: --minrelcov
- id: in_max_gap
  doc: 'coverage gaps of maximal this length each are allowed (default: 0)'
  type: long?
  inputBinding:
    prefix: --maxgap
- id: in_cat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_do_twig
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- wigchoose.pl
