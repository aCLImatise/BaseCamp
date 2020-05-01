#!/usr/bin/env cwl-runner

baseCommand:
- pgma
class: CommandLineTool
cwlVersion: v1.0
id: pgma
inputs:
- doc: ''
  id: names
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: distances
  inputBinding:
    position: 1
  type: string
