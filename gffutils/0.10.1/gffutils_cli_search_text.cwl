class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gffutils_cli_search_text.cwl
inputs:
- id: feature_type
  doc: ''
  type: string
  inputBinding:
    prefix: --featuretype
- id: gff_utils_cli
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: search
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: db
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: text
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- gffutils-cli
- search
- text
