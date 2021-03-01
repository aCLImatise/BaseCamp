class: CommandLineTool
id: deepbgc_info.cwl
inputs:
- id: in_debug
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- deepbgc
- info
