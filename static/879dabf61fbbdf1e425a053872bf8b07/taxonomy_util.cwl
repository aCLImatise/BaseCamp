class: CommandLineTool
id: ../../../taxonomy_util.cwl
inputs:
- id: db
  doc: URL for SQLite taxonomy database
  type: string
  inputBinding:
    prefix: --db
outputs: []
cwlVersion: v1.1
baseCommand:
- taxonomy_util
