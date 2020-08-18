class: CommandLineTool
id: ../../../listReadPlacedStatus.cwl
inputs:
- id: disregard_bank_locks
  doc: Disregard bank locks and write permissions (spy mode)
  type: boolean
  inputBinding:
    prefix: -s
- id: display_compatible_version
  doc: Display the compatible bank version
  type: boolean
  inputBinding:
    prefix: -v
- id: just_list_singleton
  doc: Just list singleton reads
  type: boolean
  inputBinding:
    prefix: -S
- id: just_list_duplicate
  doc: Just list duplicate reads
  type: boolean
  inputBinding:
    prefix: -D
- id: just_list_placed
  doc: Just list placed reads
  type: boolean
  inputBinding:
    prefix: -P
- id: just_list_read_eids
  doc: Just list read EIDs
  type: boolean
  inputBinding:
    prefix: -E
- id: just_list_read_iids
  doc: Just list read IIDs
  type: boolean
  inputBinding:
    prefix: -I
- id: list_read_placed_status
  doc: '[options]  -b <bank path>'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- listReadPlacedStatus
