#!/usr/bin/env cwl-runner

baseCommand:
- read-group-stats
class: CommandLineTool
cwlVersion: v1.0
id: read-group-stats
inputs:
- doc: ''
  id: read_group_file
  inputBinding:
    position: 0
  type: string
