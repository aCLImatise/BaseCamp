#!/usr/bin/env cwl-runner

baseCommand:
- pynnotator
class: CommandLineTool
cwlVersion: v1.0
id: pynnotator
inputs:
- doc: ''
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: ''
  id: b
  inputBinding:
    prefix: -b
  type: string
