class: CommandLineTool
id: ../../../staramr_db_databases..cwl
inputs:
- id: in_star_amr
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_db
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- staramr
- db
- databases.
