class: CommandLineTool
id: crux_comet_crux_output..cwl
inputs:
- id: in_crux
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_comet
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_input_spectra
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
- crux
- comet
- crux-output.
