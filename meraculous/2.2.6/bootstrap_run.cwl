#!/usr/bin/env cwl-runner

baseCommand:
- bootstrap_run.sh
class: CommandLineTool
cwlVersion: v1.0
id: bootstrap_run.sh
inputs:
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ''
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: ''
  id: s
  inputBinding:
    prefix: -s
  type: string
