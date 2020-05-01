#!/usr/bin/env cwl-runner

baseCommand:
- 2bwt-builder
class: CommandLineTool
cwlVersion: v1.0
id: 2bwt-builder
inputs:
- doc: ''
  id: sequence_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: output
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: index
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: prefix
  inputBinding:
    position: 3
  type: string
