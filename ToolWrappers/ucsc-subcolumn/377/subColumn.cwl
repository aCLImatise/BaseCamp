class: CommandLineTool
id: subColumn.cwl
inputs:
- id: in_list
  doc: '- Column is a comma-separated list.  Substitute all elements in list'
  type: boolean
  inputBinding:
    prefix: -list
- id: in_miss
  doc: '- Print misses to this file instead of aborting'
  type: File
  inputBinding:
    prefix: -miss
- id: in_column
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_tab
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_sub_dot_tab
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
- subColumn
