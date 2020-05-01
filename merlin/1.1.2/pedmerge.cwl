#!/usr/bin/env cwl-runner

baseCommand:
- pedmerge
class: CommandLineTool
cwlVersion: v1.0
id: pedmerge
inputs:
- doc: ''
  id: input_1
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: output
  inputBinding:
    position: 1
  type: string
