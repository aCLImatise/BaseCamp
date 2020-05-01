#!/usr/bin/env cwl-runner

baseCommand:
- happer
class: CommandLineTool
cwlVersion: v1.0
id: happer
inputs:
- doc: ''
  id: seq_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: bed
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: File
