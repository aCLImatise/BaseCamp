#!/usr/bin/env cwl-runner

baseCommand:
- spacedToTab
class: CommandLineTool
cwlVersion: v1.0
id: spacedtotab
inputs:
- doc: ''
  id: in_txt
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: out_tab
  inputBinding:
    position: 1
  type: string
- doc: ',Y,Z - Force it to have columns of the given widths. The final char in each
    column should be space or newline'
  id: sizes
  inputBinding:
    prefix: -sizes
  type: string
