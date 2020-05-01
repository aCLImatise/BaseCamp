#!/usr/bin/env cwl-runner

baseCommand:
- findphyl
class: CommandLineTool
cwlVersion: v1.0
id: findphyl
inputs:
- doc: ''
  id: rate_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: col_file
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: limit
  inputBinding:
    prefix: --limit
  type: string
