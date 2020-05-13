class: CommandLineTool
id: chooseLines.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: k
  doc: Number of lines to choose (default is all lines).
  type: string
  inputBinding:
    prefix: -k
outputs: []
cwlVersion: v1.1
baseCommand:
- chooseLines
