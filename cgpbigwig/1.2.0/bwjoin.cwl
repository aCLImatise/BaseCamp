#!/usr/bin/env cwl-runner

baseCommand:
- bwjoin
class: CommandLineTool
cwlVersion: v1.0
id: bwjoin
inputs:
- doc: ''
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: string
