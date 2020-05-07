class: CommandLineTool
id: kneaddata_read_count_table.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: ''
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- kneaddata_read_count_table
