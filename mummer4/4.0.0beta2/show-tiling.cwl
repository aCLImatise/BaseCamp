#!/usr/bin/env cwl-runner

baseCommand:
- show-tiling
class: CommandLineTool
cwlVersion: v1.0
id: show-tiling
inputs:
- doc: ''
  id: delta_file
  inputBinding:
    position: 0
  type: string
