class: CommandLineTool
id: mb_upgrade_table_table_file_table_file.cwl
inputs:
- id: in_mb_upgrade_table
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_table_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mb-upgrade-table
- table_file
- table_file
