class: CommandLineTool
id: mb_upgrade_table_output_file.cwl
inputs:
- id: table_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-upgrade-table
- output_file
