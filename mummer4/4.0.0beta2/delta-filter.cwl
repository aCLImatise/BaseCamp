#!/usr/bin/env cwl-runner

baseCommand:
- delta-filter
class: CommandLineTool
cwlVersion: v1.0
id: delta-filter
inputs:
- doc: ''
  id: delta_file
  inputBinding:
    position: 0
  type: string
