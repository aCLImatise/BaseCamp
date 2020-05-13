class: CommandLineTool
id: validate.cwl
inputs:
- id: file_path
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- validate
