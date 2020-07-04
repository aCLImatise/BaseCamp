class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/popStats.cwl
inputs:
- id: type
  doc: ''
  type: string
  inputBinding:
    prefix: --type
- id: target
  doc: ''
  type: string
  inputBinding:
    prefix: --target
- id: pop_stat
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- popStats
