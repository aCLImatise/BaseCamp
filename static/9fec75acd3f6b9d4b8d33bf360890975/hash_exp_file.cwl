class: CommandLineTool
id: ../../../hash_exp_file.cwl
inputs:
- id: hash_exp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: exp_file_ball
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- hash_exp
- file
