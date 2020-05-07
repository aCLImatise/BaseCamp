class: CommandLineTool
id: colTransform_output.tab.cwl
inputs:
- id: column
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_tab
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: add_factor
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: mul_factor
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: output_tab
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- colTransform
- output.tab
