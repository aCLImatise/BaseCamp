class: CommandLineTool
id: colTransform_column_mulFactor.cwl
inputs:
- id: input_tab
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: add_factor
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: mul_factor
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_tab
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- colTransform
- column
- mulFactor
