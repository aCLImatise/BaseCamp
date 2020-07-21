class: CommandLineTool
id: ../../../crux_psm_convert.cwl
inputs:
- id: input_psm_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_format
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- psm-convert
