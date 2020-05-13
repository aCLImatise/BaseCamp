class: CommandLineTool
id: gffutils_cli_fetch_ids_db.cwl
inputs:
- id: db
  doc: Database to use. If a GFF or GTF file is provided instead for this argument,
    a database will be created for you. This can take some time (several minutes),
    so it's best to create one ahead of time.
  type: string
  inputBinding:
    position: 0
- id: ids
  doc: Comma-separated list of IDs to fetch
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- gffutils-cli
- fetch
- ids
- db
