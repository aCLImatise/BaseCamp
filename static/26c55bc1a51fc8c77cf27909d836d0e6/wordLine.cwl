class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/wordLine.cwl
inputs:
- id: c_sym
  doc: '- Break up words based on C symbol rules rather than white space'
  type: boolean
  inputBinding:
    prefix: -csym
- id: in_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- wordLine
