class: CommandLineTool
id: SparCC.py.cwl
inputs:
- id: in_cor_file
  doc: File to which correlation matrix will be written.
  type: File
  inputBinding:
    prefix: --cor_file
- id: in_cov_file
  doc: File to which covariance matrix will be written.
  type: File
  inputBinding:
    prefix: --cov_file
- id: in_algo
  doc: "Name of algorithm used to compute correlations (SparCC\n(default) | pearson\
    \ | spearman | kendall)"
  type: string
  inputBinding:
    prefix: --algo
- id: in_iter
  doc: "Number of inference iterations to average over (20\ndefault)."
  type: long
  inputBinding:
    prefix: --iter
- id: in_x_iter
  doc: "Number of exclusion iterations to remove strongly\ncorrelated pairs (10 default)."
  type: long
  inputBinding:
    prefix: --xiter
- id: in_the_rs_hold
  doc: "Correlation strength exclusion threshold (0.1\ndefault).\n"
  type: double
  inputBinding:
    prefix: --thershold
- id: in_compute
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_counts_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_correlation
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_between
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_components
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SparCC.py
