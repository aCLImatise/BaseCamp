class: CommandLineTool
id: bedExtendRanges.cwl
inputs:
- id: host
  doc: mysql host
  type: boolean
  inputBinding:
    prefix: -host
- id: user
  doc: mysql user
  type: boolean
  inputBinding:
    prefix: -user
- id: password
  doc: mysql password
  type: boolean
  inputBinding:
    prefix: -password
- id: tab
  doc: Separate by tabs rather than space
  type: boolean
  inputBinding:
    prefix: -tab
- id: verbose
  doc: for extra information to STDERR
  type: string
  inputBinding:
    prefix: '- verbose'
outputs: []
cwlVersion: v1.1
baseCommand:
- bedExtendRanges
