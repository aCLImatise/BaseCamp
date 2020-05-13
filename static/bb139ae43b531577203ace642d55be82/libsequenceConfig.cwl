class: CommandLineTool
id: libsequenceConfig.cwl
inputs:
- id: print
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: version
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: number
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: and
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: exit
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- libsequenceConfig
