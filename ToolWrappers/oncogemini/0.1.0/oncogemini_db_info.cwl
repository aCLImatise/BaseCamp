class: CommandLineTool
id: oncogemini_db_info.cwl
inputs:
- id: in_db
  doc: The name of the database to be updated.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- oncogemini
- db_info
