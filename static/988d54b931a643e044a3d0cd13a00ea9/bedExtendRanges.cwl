class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bedExtendRanges.cwl
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
  doc: '- verbose level for extra information to STDERR'
  type: string
  inputBinding:
    prefix: -verbose
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: length
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- bedExtendRanges
