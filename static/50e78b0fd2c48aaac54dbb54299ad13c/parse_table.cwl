class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/parse_table.cwl
inputs:
- id: cat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: table_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- parse-table
