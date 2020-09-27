class: CommandLineTool
id: bedJoinTabOffset.cwl
inputs:
- id: in_debug
  doc: show debug messages
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_tab_key_field
  doc: "the index of the key field in the tab file that\nmatches the key field in\
    \ the bed file. default 0"
  type: File
  inputBinding:
    prefix: --tabKeyField
- id: in_bed_key_field
  doc: "the index of the key field in the bed file that\nmatches the key field in\
    \ the tab file. default 3\n"
  type: File
  inputBinding:
    prefix: --bedKeyField
- id: in_in_tab_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_bed_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_out_bed_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bedJoinTabOffset
