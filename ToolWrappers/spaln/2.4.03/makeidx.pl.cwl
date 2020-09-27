class: CommandLineTool
id: makeidx.pl.cwl
inputs:
- id: in_g
  doc: ''
  type: boolean
  inputBinding:
    prefix: -g
- id: in_d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: in_s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: in_ian_p
  doc: ''
  type: boolean
  inputBinding:
    prefix: -ianp
- id: in_fast_a_file
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
- makeidx.pl
