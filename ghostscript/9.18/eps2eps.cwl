#!/usr/bin/env cwl-runner

baseCommand:
- eps2eps
class: CommandLineTool
cwlVersion: v1.0
id: eps2eps
inputs:
- doc: ''
  id: switches
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: input_eps
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: output_eps
  inputBinding:
    position: 2
  type: string
