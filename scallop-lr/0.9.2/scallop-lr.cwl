#!/usr/bin/env cwl-runner

baseCommand:
- scallop-lr
class: CommandLineTool
cwlVersion: v1.0
id: scallop-lr
inputs:
- doc: ''
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ''
  id: c
  inputBinding:
    prefix: -c
  type: string
