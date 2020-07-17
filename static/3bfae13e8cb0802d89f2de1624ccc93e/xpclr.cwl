class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/xpclr.cwl
inputs:
- id: out
  doc: ''
  type: string
  inputBinding:
    prefix: --out
- id: format
  doc: ''
  type: string
  inputBinding:
    prefix: --format
- id: input
  doc: ''
  type: string
  inputBinding:
    prefix: --input
outputs: []
cwlVersion: v1.1
baseCommand:
- xpclr
