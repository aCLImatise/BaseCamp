class: CommandLineTool
id: mulled_search.cwl
inputs:
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: non_strict
  doc: ''
  type: boolean
  inputBinding:
    prefix: --non-strict
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- mulled-search
