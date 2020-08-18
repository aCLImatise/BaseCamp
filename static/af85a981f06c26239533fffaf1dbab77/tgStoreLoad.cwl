class: CommandLineTool
id: ../../../tgStoreLoad.cwl
inputs:
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -S
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -T
- id: v
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_dot_cns
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- tgStoreLoad
