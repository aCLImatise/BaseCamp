class: CommandLineTool
id: ../../../shigatyper.cwl
inputs:
- id: in_verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- shigatyper
