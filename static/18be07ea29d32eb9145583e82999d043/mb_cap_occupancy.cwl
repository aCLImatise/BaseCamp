class: CommandLineTool
id: mb_cap_occupancy.cwl
inputs:
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: quantile
  doc: ''
  type: string
  inputBinding:
    prefix: --quantile
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-cap-occupancy
