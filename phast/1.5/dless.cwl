class: CommandLineTool
id: ../../../dless.cwl
inputs:
- id: in_del_history
  doc: (for use with --indel-model) Use the specified indel history (see indelHistory).
  type: File
  inputBinding:
    prefix: --indel-history
- id: alignment
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tree_dot_mod
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- dless
