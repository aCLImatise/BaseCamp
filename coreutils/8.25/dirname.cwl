#!/usr/bin/env cwl-runner

baseCommand:
- dirname
class: CommandLineTool
cwlVersion: v1.0
id: dirname
inputs:
- doc: ''
  id: option
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: name
  inputBinding:
    position: 1
  type: string
- doc: end each output line with NUL, not newline
  id: zero
  inputBinding:
    prefix: --zero
  type: boolean
