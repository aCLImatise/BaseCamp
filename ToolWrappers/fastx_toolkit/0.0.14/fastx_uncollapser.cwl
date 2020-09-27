class: CommandLineTool
id: fastx_uncollapser.cwl
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
- id: in_c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: in_fast_a_un_collapse_r
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
- fastx_uncollapser
