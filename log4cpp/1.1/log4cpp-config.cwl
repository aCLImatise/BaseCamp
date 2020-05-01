#!/usr/bin/env cwl-runner

baseCommand:
- log4cpp-config
class: CommandLineTool
cwlVersion: v1.0
id: log4cpp-config
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
