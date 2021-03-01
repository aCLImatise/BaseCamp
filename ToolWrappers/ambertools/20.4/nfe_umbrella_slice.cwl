class: CommandLineTool
id: nfe_umbrella_slice.cwl
inputs:
- id: in_reset
  doc: (off by default)
  type: boolean?
  inputBinding:
    prefix: --reset
- id: in_translate
  doc: (0.0 by default)
  type: boolean?
  inputBinding:
    prefix: --translate
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nfe-umbrella-slice
