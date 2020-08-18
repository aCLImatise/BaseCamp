class: CommandLineTool
id: ../../../pslScore.cwl
inputs:
- id: file_dot_psl
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: more_files_dot_psl
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pslScore
