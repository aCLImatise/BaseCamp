class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/chooseLines.cwl
inputs:
- id: number_lines_choose
  doc: Number of lines to choose (default is all lines).
  type: string
  inputBinding:
    prefix: -k
- id: in_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- chooseLines
