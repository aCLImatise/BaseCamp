class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/convertlinks.cwl
inputs:
- id: cat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: links_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- convertlinks
