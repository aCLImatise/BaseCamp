#!/usr/bin/env cwl-runner

baseCommand:
- compare_flags.py
class: CommandLineTool
cwlVersion: v1.0
id: compare_flags.py
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
  id: f1
  inputBinding:
    prefix: -f1
  type: string
- doc: ''
  id: f2
  inputBinding:
    prefix: -f2
  type: string
