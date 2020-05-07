class: CommandLineTool
id: xsv_join_columns1_input1_input2.cwl
inputs:
- id: columns_2
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_2
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- xsv
- join
- columns1
- input1
- input2
