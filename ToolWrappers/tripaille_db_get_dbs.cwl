class: CommandLineTool
id: tripaille_db_get_dbs.cwl
inputs:
- id: in_db_id
  doc: A db ID
  type: string
  inputBinding:
    prefix: --db_id
- id: in_name
  doc: filter on db name
  type: string
  inputBinding:
    prefix: --name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tripaille
- db
- get_dbs
