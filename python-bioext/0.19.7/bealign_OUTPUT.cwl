class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bealign_OUTPUT.cwl
inputs:
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: be_align
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bealign
- OUTPUT
