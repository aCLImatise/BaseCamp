class: CommandLineTool
id: ../../../nw_support.cwl
inputs:
- id: hlp
  doc: ''
  type: boolean
  inputBinding:
    prefix: -hlp
- id: target_tree_filename_vertical_line
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: replicates_filename
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- nw_support
