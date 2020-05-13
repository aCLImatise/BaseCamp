class: CommandLineTool
id: nw_rename.cwl
inputs:
- id: l
  doc: ": only replace leaf labels. This is useful if all labels are numeric, but\
    \ inner labels represent bootstraps, and you don't want to accidentally modify\
    \ bootstrap values."
  type: boolean
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- nw_rename
