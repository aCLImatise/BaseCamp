class: CommandLineTool
id: bedJoinTabOffset.cwl
inputs:
- id: debug
  doc: show debug messages
  type: boolean
  inputBinding:
    prefix: --debug
- id: tab_key_field
  doc: the index of the key field in the tab file that matches the key field in the
    bed file. default 0
  type: string
  inputBinding:
    prefix: --tabKeyField
- id: bed_key_field
  doc: the index of the key field in the bed file that matches the key field in the
    tab file. default 3
  type: string
  inputBinding:
    prefix: --bedKeyField
outputs: []
cwlVersion: v1.1
baseCommand:
- bedJoinTabOffset
