class: CommandLineTool
id: ../../../taxonomy_util.cwl
inputs:
- id: in_db
  doc: URL for SQLite taxonomy database
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
