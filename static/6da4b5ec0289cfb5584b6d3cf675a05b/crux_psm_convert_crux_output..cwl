class: CommandLineTool
id: crux_psm_convert_crux_output..cwl
inputs:
- id: in_crux
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_psm_convert
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_input_psm_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- crux
- psm-convert
- crux-output.
