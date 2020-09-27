class: CommandLineTool
id: mimodd_rebase.cwl
inputs:
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: in_r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_rebase
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_chain_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mimodd
- rebase
