class: CommandLineTool
id: subColumn.cwl
inputs:
- id: column
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tab
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: subtab
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_tab
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: column
  doc: a comma-separated list.  Substitute all elements in list
  type: string
  inputBinding:
    prefix: '- Column'
- id: print
  doc: to this file instead of aborting
  type: File
  inputBinding:
    prefix: '- Print'
outputs: []
cwlVersion: v1.1
baseCommand:
- subColumn
