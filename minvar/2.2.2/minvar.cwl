#!/usr/bin/env cwl-runner

baseCommand:
- minvar
class: CommandLineTool
cwlVersion: v1.0
id: minvar
inputs:
- doc: ''
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: ''
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: ''
  id: k
  inputBinding:
    prefix: -k
  type: boolean
- doc: ''
  id: v
  inputBinding:
    prefix: -v
  type: boolean
