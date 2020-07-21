class: CommandLineTool
id: ../../../dumpmates.cwl
inputs:
- id: report_objects_eid
  doc: Report objects by EID instead of IID
  type: boolean
  inputBinding:
    prefix: -e
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
- id: dump_mates
  doc: '[options]  -b <bank path>'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- dumpmates
