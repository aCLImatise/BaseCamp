#!/usr/bin/env cwl-runner

baseCommand:
- show-coords
class: CommandLineTool
cwlVersion: v1.0
id: show-coords
inputs:
- doc: ''
  id: delta_file
  inputBinding:
    position: 0
  type: string
