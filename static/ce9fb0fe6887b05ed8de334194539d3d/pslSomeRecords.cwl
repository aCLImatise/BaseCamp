class: CommandLineTool
id: ../../../pslSomeRecords.cwl
inputs:
- id: not
  doc: '- include psl if name is NOT in list'
  type: boolean
  inputBinding:
    prefix: -not
- id: t_too
  doc: '- if set, the list file is two column, qName and tName. In this case only
    records matching on both q and t are output'
  type: boolean
  inputBinding:
    prefix: -tToo
- id: psl_in
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: list_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: psl_out
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- pslSomeRecords
