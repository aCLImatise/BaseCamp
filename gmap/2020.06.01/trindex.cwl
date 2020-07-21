class: CommandLineTool
id: ../../../trindex.cwl
inputs:
- id: var_0
  doc: ''
  type: string
  inputBinding:
    prefix: -D
- id: var_1
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: options_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: alignment_i_it_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- trindex
