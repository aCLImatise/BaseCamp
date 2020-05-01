#!/usr/bin/env cwl-runner

baseCommand:
- mean
class: CommandLineTool
cwlVersion: v1.0
id: mean
inputs:
- doc: ''
  id: option
  inputBinding:
    position: 0
  type: string
