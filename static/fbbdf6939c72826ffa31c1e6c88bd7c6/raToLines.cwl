class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/raToLines.cwl
inputs:
- id: in_do_tra
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- raToLines
