class: CommandLineTool
id: tailLines_file.cwl
inputs:
- id: tail
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tailLines
- file
