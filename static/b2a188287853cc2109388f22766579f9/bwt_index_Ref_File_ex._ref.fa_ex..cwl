class: CommandLineTool
id: bwt_index_Ref_File_ex._ref.fa_ex..cwl
inputs:
- id: prefix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ex
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: my_ref
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- bwt_index
- Ref_File
- ex.
- ref.fa
- ex.
