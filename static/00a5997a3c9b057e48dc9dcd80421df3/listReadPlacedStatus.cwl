class: CommandLineTool
id: listReadPlacedStatus.cwl
inputs:
- id: in_disregard_bank_locks
  doc: Disregard bank locks and write permissions (spy mode)
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_display_compatible_version
  doc: Display the compatible bank version
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_just_list_singleton
  doc: Just list singleton reads
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_just_list_duplicate
  doc: Just list duplicate reads
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_just_list_placed
  doc: Just list placed reads
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_just_list_read_eids
  doc: Just list read EIDs
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_just_list_read_iids
  doc: Just list read IIDs
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_list_read_placed_status
  doc: '[options]  -b <bank path>'
  type: string
  inputBinding:
    position: 0
- id: in_iid
  doc: eid  code  numcontigs  contig iid list
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- listReadPlacedStatus
