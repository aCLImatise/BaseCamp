class: CommandLineTool
id: ../../../taxonomy_util_get_id.cwl
inputs:
- id: in_db
  doc: ''
  type: string
  inputBinding:
    prefix: --db
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- taxonomy_util
- get_id
