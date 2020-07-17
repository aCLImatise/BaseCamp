class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gffutils_cli_fetch_ids.cwl
inputs:
- id: gff_utils_cli
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fetch
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: db
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: ids
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- gffutils-cli
- fetch
- ids
