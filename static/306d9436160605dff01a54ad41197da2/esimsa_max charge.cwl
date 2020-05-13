class: CommandLineTool
id: esimsa_max charge.cwl
inputs:
- id: peak_list
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: max_charge
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- esimsa
- max charge
