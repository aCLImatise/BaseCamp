class: CommandLineTool
id: bwt_index_Ref_File_ex._MyRef.cwl
inputs:
- id: re_ffa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ex
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: my_ref
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- bwt_index
- Ref_File
- ex.
- MyRef
