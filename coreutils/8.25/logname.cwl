#!/usr/bin/env cwl-runner

baseCommand:
- logname
class: CommandLineTool
cwlVersion: v1.0
id: logname
inputs:
- doc: ''
  id: option
  inputBinding:
    position: 0
  type: string
