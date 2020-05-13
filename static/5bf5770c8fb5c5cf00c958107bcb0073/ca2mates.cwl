class: CommandLineTool
id: ca2mates.cwl
inputs:
- id: a
  doc: .asm file
  type: boolean
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- ca2mates
