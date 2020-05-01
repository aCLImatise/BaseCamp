#!/usr/bin/env cwl-runner

baseCommand:
- remove_tail.py
class: CommandLineTool
cwlVersion: v1.0
id: remove_tail.py
inputs:
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ''
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: ''
  id: d
  inputBinding:
    prefix: -d
  type: boolean
