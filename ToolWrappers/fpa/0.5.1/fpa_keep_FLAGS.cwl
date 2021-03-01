class: CommandLineTool
id: fpa_keep_FLAGS.cwl
inputs:
- id: in_input
  doc: ''
  type: string?
  inputBinding:
    prefix: --input
- id: in_fpa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fpa
- keep
- FLAGS
