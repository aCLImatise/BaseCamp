#!/usr/bin/env cwl-runner

baseCommand:
- show-diff
class: CommandLineTool
cwlVersion: v1.0
id: show-diff
inputs:
- doc: ''
  id: delta_file
  inputBinding:
    position: 0
  type: string
