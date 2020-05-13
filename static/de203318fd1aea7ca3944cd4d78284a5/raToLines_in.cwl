class: CommandLineTool
id: raToLines_in.ra.cwl
inputs:
- id: out_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- raToLines
- in.ra
