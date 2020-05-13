class: CommandLineTool
id: listReadPlacedStatus.cwl
inputs:
- id: list_read_placed_status
  doc: '[options]  -b <bank path>'
  type: string
  inputBinding:
    position: 0
- id: s
  doc: Disregard bank locks and write permissions (spy mode)
  type: boolean
  inputBinding:
    prefix: -s
- id: v
  doc: Display the compatible bank version
  type: boolean
  inputBinding:
    prefix: -v
- id: s
  doc: Just list singleton reads
  type: boolean
  inputBinding:
    prefix: -S
- id: d
  doc: Just list duplicate reads
  type: boolean
  inputBinding:
    prefix: -D
- id: p
  doc: Just list placed reads
  type: boolean
  inputBinding:
    prefix: -P
- id: e
  doc: Just list read EIDs
  type: boolean
  inputBinding:
    prefix: -E
- id: i
  doc: Just list read IIDs
  type: boolean
  inputBinding:
    prefix: -I
outputs: []
cwlVersion: v1.1
baseCommand:
- listReadPlacedStatus
