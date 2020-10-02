class: CommandLineTool
id: catchr.pl.cwl
inputs:
- id: in_o
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
- id: in_n
  doc: ''
  type: boolean
  inputBinding:
    prefix: -n
- id: in_h_prefix
  doc: ''
  type: boolean
  inputBinding:
    prefix: -hPrefix
- id: in_w_keyword
  doc: ''
  type: boolean
  inputBinding:
    prefix: -wKeyword
- id: in_input_files
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- catchr.pl
