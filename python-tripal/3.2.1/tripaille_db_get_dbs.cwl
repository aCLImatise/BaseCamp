class: CommandLineTool
id: tripaille_db_get_dbs.cwl
inputs:
- id: db_id
  doc: A db ID
  type: string
  inputBinding:
    prefix: --db_id
- id: name
  doc: filter on db name
  type: string
  inputBinding:
    prefix: --name
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- db
- get_dbs
