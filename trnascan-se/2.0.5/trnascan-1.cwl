#!/usr/bin/env cwl-runner

baseCommand:
- trnascan-1.4
class: CommandLineTool
cwlVersion: v1.0
id: trnascan-1.4
inputs:
- doc: ''
  id: trnascan
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: seq_file
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: options
  inputBinding:
    prefix: -options
  type: boolean
