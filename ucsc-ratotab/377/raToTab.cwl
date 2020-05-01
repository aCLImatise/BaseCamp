#!/usr/bin/env cwl-runner

baseCommand:
- raToTab
class: CommandLineTool
cwlVersion: v1.0
id: ratotab
inputs:
- doc: ''
  id: inra
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: out_tab
  inputBinding:
    position: 1
  type: string
- doc: ",b,c - List columns in order to output in table Only these columns will be\
    \ output.  If you Don't give this option, all columns are output in alphabetical\
    \ order"
  id: cols
  inputBinding:
    prefix: -cols
  type: string
- doc: names in header
  id: head
  inputBinding:
    prefix: -head
  type: string
