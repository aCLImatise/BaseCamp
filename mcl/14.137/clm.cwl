class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/clm.cwl
inputs:
- id: nop
  doc: ''
  type: boolean
  inputBinding:
    prefix: --nop
- id: mode
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- clm
