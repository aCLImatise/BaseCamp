class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/predict.py.cwl
inputs:
- id: k
  doc: ''
  type: string
  inputBinding:
    prefix: -k
- id: phenotypes
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: from
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: hmmer
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: pfam
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: annotation
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- predict.py
