class: CommandLineTool
id: xsv_join_columns1_input2.cwl
inputs:
- id: input_1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: columns_2
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: input_2
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- xsv
- join
- columns1
- input2
