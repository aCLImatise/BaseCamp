class: CommandLineTool
id: linesToRa_out.ra.cwl
inputs:
- id: in_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: outra
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- linesToRa
- out.ra
