#!/usr/bin/env cwl-runner

baseCommand:
- ITSx
class: CommandLineTool
cwlVersion: v1.0
id: itsx
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
