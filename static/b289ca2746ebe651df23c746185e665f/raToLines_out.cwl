class: CommandLineTool
id: raToLines_out.txt.cwl
inputs:
- id: inra
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_txt
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- raToLines
- out.txt
