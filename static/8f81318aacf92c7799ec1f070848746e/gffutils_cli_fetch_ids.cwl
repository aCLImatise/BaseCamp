class: CommandLineTool
id: gffutils_cli_fetch_ids.cwl
inputs:
- id: in_gff_utils_cli
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fetch
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_db
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_ids
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gffutils-cli
- fetch
- ids
