class: CommandLineTool
id: genomepy_search_TERM.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: term
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- genomepy
- search
- TERM
