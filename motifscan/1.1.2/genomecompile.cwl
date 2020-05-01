#!/usr/bin/env cwl-runner

baseCommand:
- genomecompile
class: CommandLineTool
cwlVersion: v1.0
id: genomecompile
inputs:
- doc: ''
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: ''
  id: g
  inputBinding:
    prefix: -G
  type: string
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: string
