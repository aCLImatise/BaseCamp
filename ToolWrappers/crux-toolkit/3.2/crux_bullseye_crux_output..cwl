class: CommandLineTool
id: crux_bullseye_crux_output..cwl
inputs:
- id: in_crux
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bullseye
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_ms_one_spectra
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- crux
- bullseye
- crux-output.
