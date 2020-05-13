class: CommandLineTool
id: fermi_sub.cwl
inputs:
- id: in_fmd
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: array_bits
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: c
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- sub
