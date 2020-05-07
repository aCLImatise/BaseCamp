class: CommandLineTool
id: bwt_index_Ref_File_ex._ref.fa_Prefix_ex..cwl
inputs:
- id: my_ref
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bwt_index
- Ref_File
- ex.
- ref.fa
- Prefix
- ex.
