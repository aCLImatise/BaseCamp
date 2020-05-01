#!/usr/bin/env cwl-runner

baseCommand:
- convert2snns
class: CommandLineTool
cwlVersion: v1.0
id: convert2snns
inputs:
- doc: ''
  id: control_file
  inputBinding:
    position: 0
  type: string
