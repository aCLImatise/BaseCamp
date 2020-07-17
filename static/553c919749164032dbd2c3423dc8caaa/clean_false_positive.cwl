class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/clean_false_positive.py.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- clean_false_positive.py
