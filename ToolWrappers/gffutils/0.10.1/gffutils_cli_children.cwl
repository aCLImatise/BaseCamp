class: CommandLineTool
id: gffutils_cli_children.cwl
inputs:
- id: in_limit
  doc: "Feature type (string), or level (integer). No children\nbelow this level will\
    \ be returned (default: -)"
  type: long
  inputBinding:
    prefix: --limit
- id: in_exclude
  doc: "Comma-separated list of featuretypes to filter out (like\ngrep -v) (default:\
    \ -)"
  type: string
  inputBinding:
    prefix: --exclude
- id: in_exclude_self
  doc: "Use this to suppress reporting the IDs you've provided.\n(default: False)\n"
  type: boolean
  inputBinding:
    prefix: --exclude-self
- id: in_db
  doc: "Database to use. If a GFF or GTF file is provided instead\nfor this argument,\
    \ a database will be created for you.\nThis can take some time (several minutes),\
    \ so it's best\nto create one ahead of time."
  type: string
  inputBinding:
    position: 0
- id: in_ids
  doc: "Comma-separated list of IDs. These IDs, along with their\nchildren, will be\
    \ returned (subject to --limit and\n--exclude). If none provided, use all genes\
    \ in the\ndatabase (default: -)"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gffutils-cli
- children
