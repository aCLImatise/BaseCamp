#!/usr/bin/env cwl-runner

baseCommand:
- pslMap
class: CommandLineTool
cwlVersion: v1.0
id: pslmap
inputs:
- doc: ''
  id: in_psl
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: map_file
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: out_psl
  inputBinding:
    position: 2
  type: string
- doc: 2 - show each overlap and the mapping
  id: verbose
  inputBinding:
    prefix: '- verbose'
  type: string
