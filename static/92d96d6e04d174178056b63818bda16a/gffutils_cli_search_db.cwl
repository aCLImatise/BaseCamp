class: CommandLineTool
id: gffutils_cli_search_db.cwl
inputs:
- id: db
  doc: Database to use. If a GFF or GTF file is provided instead for this argument,
    a database will be created for you. This can take some time (several minutes),
    so it's best to create one ahead of time.
  type: string
  inputBinding:
    position: 0
- id: text
  doc: Text to search for. Case-insensitive; use sql LIKE syntax
  type: string
  inputBinding:
    position: 1
- id: feature_type
  doc: 'Restrict to a particular featuretype. This can be faster than doing a grep
    on the output, since it restricts the search space in the database (default: -)'
  type: string
  inputBinding:
    prefix: --featuretype
outputs: []
cwlVersion: v1.1
baseCommand:
- gffutils-cli
- search
- db
