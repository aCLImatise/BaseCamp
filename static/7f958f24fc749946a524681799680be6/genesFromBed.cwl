class: CommandLineTool
id: genesFromBed.py.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- genesFromBed.py
