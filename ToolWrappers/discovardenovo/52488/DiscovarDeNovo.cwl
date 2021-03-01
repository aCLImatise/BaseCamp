class: CommandLineTool
id: DiscovarDeNovo.cwl
inputs:
- id: in_arg_one
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- DiscovarDeNovo
