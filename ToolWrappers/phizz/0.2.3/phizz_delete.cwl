class: CommandLineTool
id: ../../../phizz_delete.cwl
inputs:
- id: in_db_name
  doc: ''
  type: File
  inputBinding:
    prefix: --db_name
- id: in_path
  doc: ''
  type: File
  inputBinding:
    prefix: --path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phizz
- delete
