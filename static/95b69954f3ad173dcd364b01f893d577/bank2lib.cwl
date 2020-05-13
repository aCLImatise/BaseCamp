class: CommandLineTool
id: bank2lib.cwl
inputs:
- id: bank
  doc: bank where assembly is stored
  type: string
  inputBinding:
    prefix: -bank
- id: eid
  doc: report eids
  type: boolean
  inputBinding:
    prefix: -eid
- id: iid
  doc: report iids (default)
  type: boolean
  inputBinding:
    prefix: -iid
- id: o
  doc: output prefix
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- bank2lib
