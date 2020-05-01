#!/usr/bin/env cwl-runner

baseCommand:
- vawk
class: CommandLineTool
cwlVersion: v1.0
id: vawk
inputs:
- doc: ''
  id: v
  inputBinding:
    prefix: -v
  type: string
- doc: ''
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: ''
  id: header
  inputBinding:
    prefix: --header
  type: boolean
- doc: ''
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
