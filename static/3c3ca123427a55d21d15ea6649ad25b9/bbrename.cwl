class: CommandLineTool
id: ../../../bbrename.sh.cwl
inputs:
- id: rename_dots_h
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bbrename.sh
