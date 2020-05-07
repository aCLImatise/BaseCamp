class: CommandLineTool
id: blockbuster.x_file.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- blockbuster.x
- file
