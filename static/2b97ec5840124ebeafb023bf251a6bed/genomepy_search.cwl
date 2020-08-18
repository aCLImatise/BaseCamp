class: CommandLineTool
id: ../../../genomepy_search.cwl
inputs:
- id: provider
  doc: provider
  type: string
  inputBinding:
    prefix: --provider
- id: term
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- genomepy
- search
