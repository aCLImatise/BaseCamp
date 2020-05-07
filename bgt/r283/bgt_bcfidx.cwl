class: CommandLineTool
id: bgt_bcfidx.cwl
inputs:
- id: in_bcf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: s
  doc: ''
  type: long
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- bgt
- bcfidx
