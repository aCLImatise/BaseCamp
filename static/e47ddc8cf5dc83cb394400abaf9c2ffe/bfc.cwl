class: CommandLineTool
id: bfc.cwl
inputs:
- id: to_count_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: to_correct_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: v
  doc: show version number
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- bfc
