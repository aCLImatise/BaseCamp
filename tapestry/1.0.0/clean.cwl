#!/usr/bin/env cwl-runner

baseCommand:
- clean
class: CommandLineTool
cwlVersion: v1.0
id: clean
inputs:
- doc: ''
  id: a
  inputBinding:
    prefix: -a
  type: string
- doc: ''
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: string
