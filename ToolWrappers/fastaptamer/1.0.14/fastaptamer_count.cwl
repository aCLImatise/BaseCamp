class: CommandLineTool
id: fastaptamer_count.cwl
inputs:
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: File
  inputBinding:
    prefix: -i
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastaptamer_count
