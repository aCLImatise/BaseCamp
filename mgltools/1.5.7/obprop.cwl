#!/usr/bin/env cwl-runner

baseCommand:
- obprop
class: CommandLineTool
cwlVersion: v1.0
id: obprop
inputs:
- doc: ''
  id: filename
  inputBinding:
    position: 0
  type: File
