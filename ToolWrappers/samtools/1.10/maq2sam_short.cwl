class: CommandLineTool
id: maq2sam_short.cwl
inputs:
- id: in_maq_two_sam
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_in_dot_map
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_read_group
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
- maq2sam-short
