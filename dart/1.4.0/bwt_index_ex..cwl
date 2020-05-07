class: CommandLineTool
id: bwt_index_ex..cwl
inputs:
- id: ref_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ex
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: re_ffa
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: prefix
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: ex
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: my_ref
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- bwt_index
- ex.
