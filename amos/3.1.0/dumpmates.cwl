class: CommandLineTool
id: ../../../dumpmates.cwl
inputs:
- id: in_report_objects_eid
  doc: Report objects by EID instead of IID
  type: boolean
  inputBinding:
    prefix: -e
- id: in_disregard_bank_locks
  doc: Disregard bank locks and write permissions (spy mode)
  type: boolean
  inputBinding:
    prefix: -s
- id: in_display_compatible_version
  doc: Display the compatible bank version
  type: boolean
  inputBinding:
    prefix: -v
- id: in_dump_mates
  doc: '[options]  -b <bank path>'
  type: string
  inputBinding:
    position: 0
- id: in_stdout
  doc: .OPTIONS.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dumpmates
