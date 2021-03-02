class: CommandLineTool
id: hash_exp.cwl
inputs:
- id: in_exp_file_ball
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hash_exp
