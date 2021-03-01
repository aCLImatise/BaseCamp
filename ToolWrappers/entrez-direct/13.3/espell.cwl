class: CommandLineTool
id: espell.cwl
inputs:
- id: in_db
  doc: Database name
  type: boolean?
  inputBinding:
    prefix: -db
- id: in_query
  doc: Query string
  type: boolean?
  inputBinding:
    prefix: -query
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- espell
