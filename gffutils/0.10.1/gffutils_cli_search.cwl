class: CommandLineTool
id: gffutils_cli_search.cwl
inputs:
- id: feature_type
  doc: ''
  type: string
  inputBinding:
    prefix: --featuretype
outputs: []
cwlVersion: v1.1
baseCommand:
- gffutils-cli
- search
