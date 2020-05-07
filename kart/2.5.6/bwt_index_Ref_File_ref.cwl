class: CommandLineTool
id: bwt_index_Ref_File_ref.fa.cwl
inputs:
- id: ex
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: re_ffa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: ex
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: my_ref
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- bwt_index
- Ref_File
- ref.fa
