#!/usr/bin/env cwl-runner

baseCommand:
- tsort
class: CommandLineTool
cwlVersion: v1.0
id: tsort
inputs:
- doc: ''
  id: option
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: file
  inputBinding:
    position: 1
  type: File
