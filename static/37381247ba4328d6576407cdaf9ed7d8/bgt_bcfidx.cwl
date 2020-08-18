class: CommandLineTool
id: ../../../bgt_bcfidx.cwl
inputs:
- id: s
  doc: ''
  type: long
  inputBinding:
    prefix: -s
- id: in_dot_bcf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bgt
- bcfidx
