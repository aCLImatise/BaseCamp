#!/usr/bin/env cwl-runner

baseCommand:
- mltree
class: CommandLineTool
cwlVersion: v1.0
id: mltree
inputs:
- doc: ''
  id: rate_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: file
  inputBinding:
    position: 1
  type: File
