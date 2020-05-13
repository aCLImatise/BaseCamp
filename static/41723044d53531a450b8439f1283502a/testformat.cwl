class: CommandLineTool
id: testformat.sh.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- testformat.sh
