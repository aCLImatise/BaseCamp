class: CommandLineTool
id: crux_psm_convert_output format.cwl
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
- output format
