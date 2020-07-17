class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/printenv.cwl
inputs:
- id: 'null'
  doc: end each output line with NUL, not newline
  type: boolean
  inputBinding:
    prefix: --null
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- printenv
