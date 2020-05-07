class: CommandLineTool
id: colTransform_column_input.tab_mulFactor.cwl
inputs:
- id: add_factor
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: mul_factor
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_tab
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- colTransform
- column
- input.tab
- mulFactor
