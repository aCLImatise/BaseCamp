class: CommandLineTool
id: kcutiltest.cwl
inputs:
- id: mutex
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: rnum
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: th
  doc: ''
  type: string
  inputBinding:
    prefix: -th
- id: iv
  doc: ''
  type: string
  inputBinding:
    prefix: -iv
outputs: []
cwlVersion: v1.1
baseCommand:
- kcutiltest
