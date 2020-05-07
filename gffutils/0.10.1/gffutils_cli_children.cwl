class: CommandLineTool
id: gffutils_cli_children.cwl
inputs:
- id: db
  doc: Database to use. If a GFF or GTF file is provided instead for this argument,
    a database will be created for you. This can take some time (several minutes),
    so it's best to create one ahead of time.
  type: string
  inputBinding:
    position: 0
- id: ids
  doc: 'Comma-separated list of IDs. These IDs, along with their children, will be
    returned (subject to --limit and --exclude). If none provided, use all genes in
    the database (default: -)'
  type: string
  inputBinding:
    position: 1
- id: limit
  doc: 'Feature type (string), or level (integer). No children below this level will
    be returned (default: -)'
  type: string
  inputBinding:
    prefix: --limit
- id: exclude
  doc: 'Comma-separated list of featuretypes to filter out (like grep -v) (default:
    -)'
  type: string
  inputBinding:
    prefix: --exclude
- id: exclude_self
  doc: "Use this to suppress reporting the IDs you've provided. (default: False)"
  type: boolean
  inputBinding:
    prefix: --exclude-self
outputs: []
cwlVersion: v1.1
baseCommand:
- gffutils-cli
- children
