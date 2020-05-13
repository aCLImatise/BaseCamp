class: CommandLineTool
id: colTransform_column_input.tab_addFactor_output.tab.cwl
inputs:
- id: mul_factor
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_tab
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- colTransform
- column
- input.tab
- addFactor
- output.tab
