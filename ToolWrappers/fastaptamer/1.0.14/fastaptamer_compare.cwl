class: CommandLineTool
id: fastaptamer_compare.cwl
inputs:
- id: in_a
  doc: ''
  type: boolean
  inputBinding:
    prefix: -a
- id: in_q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_y
  doc: ''
  type: File
  inputBinding:
    prefix: -y
- id: in_x
  doc: ''
  type: File
  inputBinding:
    prefix: -x
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastaptamer_compare
