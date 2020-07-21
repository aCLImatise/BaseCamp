class: CommandLineTool
id: ../../../mergesam.sh.cwl
inputs:
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: out
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mergesam.sh
