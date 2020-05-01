#!/usr/bin/env cwl-runner

baseCommand:
- mapDIA
class: CommandLineTool
cwlVersion: v1.0
id: mapdia
inputs:
- doc: ''
  id: input
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: parameter
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: file
  inputBinding:
    position: 2
  type: File
