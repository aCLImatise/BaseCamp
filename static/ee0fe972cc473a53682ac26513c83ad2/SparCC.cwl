class: CommandLineTool
id: SparCC.py.cwl
inputs:
- id: python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sparc_cpy
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: counts_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: cor_file
  doc: File to which correlation matrix will be written.
  type: string
  inputBinding:
    prefix: --cor_file
- id: cov_file
  doc: File to which covariance matrix will be written.
  type: string
  inputBinding:
    prefix: --cov_file
- id: algo
  doc: Name of algorithm used to compute correlations (SparCC (default) | pearson
    | spearman | kendall)
  type: string
  inputBinding:
    prefix: --algo
- id: iter
  doc: Number of inference iterations to average over (20 default).
  type: string
  inputBinding:
    prefix: --iter
- id: x_iter
  doc: Number of exclusion iterations to remove strongly correlated pairs (10 default).
  type: string
  inputBinding:
    prefix: --xiter
- id: the_rs_hold
  doc: Correlation strength exclusion threshold (0.1 default).
  type: string
  inputBinding:
    prefix: --thershold
outputs: []
cwlVersion: v1.1
baseCommand:
- SparCC.py
