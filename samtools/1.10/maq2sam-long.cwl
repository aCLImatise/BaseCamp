#!/usr/bin/env cwl-runner

baseCommand:
- maq2sam-long
class: CommandLineTool
cwlVersion: v1.0
id: maq2sam-long
inputs:
- doc: ''
  id: maq2sam
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: in_map
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: read_group
  inputBinding:
    position: 2
  type: string
