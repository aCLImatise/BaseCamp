class: CommandLineTool
id: pttree.cwl
inputs:
- id: in_print_size
  doc: ''
  type: boolean
  inputBinding:
    prefix: --print-size
- id: in_s
  doc: ''
  type: string
  inputBinding:
    prefix: -S
- id: in_l
  doc: ''
  type: string
  inputBinding:
    prefix: -L
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pttree
