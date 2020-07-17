class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/_giftogd2.cwl
inputs:
- id: gift_ogd_two
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: filename_do_tgif
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: filename_dot_gd_two
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: cs
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: fmt
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- _giftogd2
