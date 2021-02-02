class: CommandLineTool
id: crux_param_medic.cwl
inputs:
- id: in_spectrum_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- crux
- param-medic
