class: CommandLineTool
id: esimsa_peaklist_output.cwl
inputs:
- id: max_charge
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- esimsa
- peaklist
- output
