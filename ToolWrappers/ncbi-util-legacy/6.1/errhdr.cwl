class: CommandLineTool
id: errhdr.cwl
inputs:
- id: in_codesubcode_tuples
  doc: code,subcode tuples
  type: long
  inputBinding:
    prefix: '-2'
- id: in_short_subcode_defines
  doc: short subcode defines
  type: string
  inputBinding:
    prefix: -s
- id: in_msg_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_hdr_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- errhdr
