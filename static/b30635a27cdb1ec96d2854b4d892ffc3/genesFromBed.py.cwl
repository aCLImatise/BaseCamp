class: CommandLineTool
id: genesFromBed.py.cwl
inputs:
- id: in_mode
  doc: choose mode
  type: string
  inputBinding:
    prefix: --mode
- id: in_distance
  doc: distance from peak to gene
  type: string
  inputBinding:
    prefix: --distance
- id: in_type
  doc: type of bed file (<bed>, <THOR>)
  type: File
  inputBinding:
    prefix: --type
- id: in_metric
  doc: metric to merge peaks' scores (mean, max)
  type: long
  inputBinding:
    prefix: --metric
- id: in_exp_matrix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_path
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- genesFromBed.py
