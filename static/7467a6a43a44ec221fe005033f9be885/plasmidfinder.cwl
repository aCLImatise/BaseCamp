class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/plasmidfinder.py.cwl
inputs:
- id: i
  doc: ''
  type: string[]
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: tmp
  doc: ''
  type: string
  inputBinding:
    prefix: -tmp
outputs: []
cwlVersion: v1.1
baseCommand:
- plasmidfinder.py
