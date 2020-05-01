#!/usr/bin/env cwl-runner

baseCommand:
- retaxdump
class: CommandLineTool
cwlVersion: v1.0
id: retaxdump
inputs:
- doc: ''
  id: v
  inputBinding:
    prefix: -V
  type: boolean
- doc: ''
  id: n
  inputBinding:
    prefix: -n
  type: File
