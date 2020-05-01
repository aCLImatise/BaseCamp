#!/usr/bin/env cwl-runner

baseCommand:
- para
class: CommandLineTool
cwlVersion: v1.0
id: para
inputs:
- doc: ''
  id: command
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: command_specific
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: arguments
  inputBinding:
    position: 2
  type: string
- doc: =1 - set verbosity level.
  id: verbose
  inputBinding:
    prefix: -verbose
  type: boolean
