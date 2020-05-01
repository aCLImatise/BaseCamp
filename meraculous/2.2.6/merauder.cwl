#!/usr/bin/env cwl-runner

baseCommand:
- merauder
class: CommandLineTool
cwlVersion: v1.0
id: merauder
inputs:
- doc: ''
  id: option
  inputBinding:
    position: 0
  type: string
