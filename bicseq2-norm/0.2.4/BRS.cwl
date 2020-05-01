#!/usr/bin/env cwl-runner

baseCommand:
- BRS
class: CommandLineTool
cwlVersion: v1.0
id: brs
inputs:
- doc: ''
  id: seq_file
  inputBinding:
    position: 0
  type: string
