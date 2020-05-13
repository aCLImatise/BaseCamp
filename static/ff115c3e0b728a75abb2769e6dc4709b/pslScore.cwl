class: CommandLineTool
id: pslScore.cwl
inputs:
- id: file_psl
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: more_files_psl
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pslScore
