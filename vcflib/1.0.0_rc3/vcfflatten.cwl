#!/usr/bin/env cwl-runner

baseCommand:
- vcfflatten
class: CommandLineTool
cwlVersion: v1.0
id: vcfflatten
inputs:
- doc: ''
  id: file
  inputBinding:
    position: 0
  type: File
