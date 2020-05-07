class: CommandLineTool
id: mb_upgrade_table_table_file.cwl
inputs:
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-upgrade-table
- table_file
