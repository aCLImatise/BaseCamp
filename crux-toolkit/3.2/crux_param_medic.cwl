class: CommandLineTool
id: ../../../crux_param_medic.cwl
inputs:
- id: spectrum_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- param-medic
