class: CommandLineTool
id: ../../../errhdr.cwl
inputs:
- id: codesubcode_tuples
  doc: code,subcode tuples
  type: string
  inputBinding:
    prefix: '-2'
- id: short_subcode_defines
  doc: short subcode defines
  type: string
  inputBinding:
    prefix: -s
- id: msg_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: hdr_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- errhdr
