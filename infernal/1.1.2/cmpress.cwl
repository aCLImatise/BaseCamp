#!/usr/bin/env cwl-runner

baseCommand:
- cmpress
class: CommandLineTool
cwlVersion: v1.0
id: cmpress
inputs:
- doc: ''
  id: cm_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: options
  inputBinding:
    prefix: -options
  type: boolean
