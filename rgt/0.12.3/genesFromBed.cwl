class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/genesFromBed.py.cwl
inputs:
- id: mode
  doc: choose mode
  type: string
  inputBinding:
    prefix: --mode
- id: distance
  doc: distance from peak to gene
  type: string
  inputBinding:
    prefix: --distance
- id: type
  doc: type of bed file (<bed>, <THOR>)
  type: string
  inputBinding:
    prefix: --type
- id: metric
  doc: metric to merge peaks' scores (mean, max)
  type: string
  inputBinding:
    prefix: --metric
- id: exp_matrix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: path
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- genesFromBed.py
