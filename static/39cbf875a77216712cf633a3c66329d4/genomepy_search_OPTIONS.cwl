class: CommandLineTool
id: genomepy_search_OPTIONS.cwl
inputs:
- id: provider
  doc: provider
  type: string
  inputBinding:
    prefix: --provider
outputs: []
cwlVersion: v1.1
baseCommand:
- genomepy
- search
- OPTIONS
