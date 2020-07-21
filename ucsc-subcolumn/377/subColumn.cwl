class: CommandLineTool
id: ../../../subColumn.cwl
inputs:
- id: list
  doc: '- Column is a comma-separated list.  Substitute all elements in list'
  type: boolean
  inputBinding:
    prefix: -list
- id: miss
  doc: '- Print misses to this file instead of aborting'
  type: File
  inputBinding:
    prefix: -miss
- id: column
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dot_tab
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: sub_dot_tab
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_dot_tab
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- subColumn
