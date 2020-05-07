class: CommandLineTool
id: dumpmates.cwl
inputs:
- id: dump_mates
  doc: '[options]  -b <bank path>'
  type: string
  inputBinding:
    position: 0
- id: e
  doc: Report objects by EID instead of IID
  type: boolean
  inputBinding:
    prefix: -e
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
outputs: []
cwlVersion: v1.1
baseCommand:
- dumpmates
