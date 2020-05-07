class: CommandLineTool
id: planemo_open_PATH.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: path
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- open
- PATH
