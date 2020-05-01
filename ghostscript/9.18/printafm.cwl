#!/usr/bin/env cwl-runner

baseCommand:
- printafm
class: CommandLineTool
cwlVersion: v1.0
id: printafm
inputs:
- doc: ''
  id: fontname
  inputBinding:
    position: 0
  type: string
