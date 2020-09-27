class: CommandLineTool
id: bealign_INPUT.cwl
inputs:
- id: in_a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: in_e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: in_r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: in_be_align
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
- bealign
- INPUT
