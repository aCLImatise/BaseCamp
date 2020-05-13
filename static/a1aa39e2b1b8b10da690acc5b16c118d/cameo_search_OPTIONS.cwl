class: CommandLineTool
id: cameo_search_OPTIONS.cwl
inputs:
- id: product
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- cameo
- search
- OPTIONS
