class: CommandLineTool
id: wdl_parse_wdl_file.cwl
inputs:
- id: in_no_color
  doc: ''
  type: boolean
  inputBinding:
    prefix: --no-color
- id: in_debug
  doc: ''
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_wdl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- wdl
- parse
- wdl_file
