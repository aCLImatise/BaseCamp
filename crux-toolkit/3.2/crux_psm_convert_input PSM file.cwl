class: CommandLineTool
id: crux_psm_convert_input PSM file.cwl
inputs:
- id: output_format
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- psm-convert
- input PSM file
