#!/usr/bin/env cwl-runner

baseCommand:
- slsh
class: CommandLineTool
cwlVersion: v1.0
id: slsh
inputs:
- doc: ''
  id: file
  inputBinding:
    position: 0
  type: File
- doc: ''
  id: not
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: found
  inputBinding:
    position: 2
  type: string
