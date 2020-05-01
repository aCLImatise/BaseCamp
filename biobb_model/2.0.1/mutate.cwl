#!/usr/bin/env cwl-runner

baseCommand:
- mutate
class: CommandLineTool
cwlVersion: v1.0
id: mutate
inputs:
- doc: ''
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: ''
  id: system
  inputBinding:
    prefix: --system
  type: string
- doc: ''
  id: step
  inputBinding:
    prefix: --step
  type: string
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
