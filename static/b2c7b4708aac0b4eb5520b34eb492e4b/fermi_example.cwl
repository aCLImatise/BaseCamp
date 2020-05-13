class: CommandLineTool
id: fermi_example.cwl
inputs:
- id: in_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ceu
  doc: ''
  type: boolean
  inputBinding:
    prefix: -ceU
- id: k
  doc: ''
  type: string
  inputBinding:
    prefix: -k
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- example
