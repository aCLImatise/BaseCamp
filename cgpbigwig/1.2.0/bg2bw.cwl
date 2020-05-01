#!/usr/bin/env cwl-runner

baseCommand:
- bg2bw
class: CommandLineTool
cwlVersion: v1.0
id: bg2bw
inputs:
- doc: ''
  id: i
  inputBinding:
    prefix: -i
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
