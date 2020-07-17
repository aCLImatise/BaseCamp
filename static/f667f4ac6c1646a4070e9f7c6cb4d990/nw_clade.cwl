class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/nw_clade.cwl
inputs:
- id: hm
  doc: ''
  type: boolean
  inputBinding:
    prefix: -hm
- id: filename_vertical_line
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: label
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- nw_clade
