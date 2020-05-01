#!/usr/bin/env cwl-runner

baseCommand:
- isnovoindex
class: CommandLineTool
cwlVersion: v1.0
id: isnovoindex
inputs:
- doc: ''
  id: filename
  inputBinding:
    position: 0
  type: File
