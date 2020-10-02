class: CommandLineTool
id: fpa_drop_FLAGS.cwl
inputs:
- id: in_input
  doc: ''
  type: string
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
cwlVersion: v1.1
baseCommand:
- fpa
- drop
- FLAGS
