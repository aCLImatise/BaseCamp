class: CommandLineTool
id: updateClrRanges.cwl
inputs:
- id: bank_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seqnameend5end3txt
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: i
  doc: ''
  type: boolean
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- updateClrRanges
