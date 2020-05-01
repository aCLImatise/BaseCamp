#!/usr/bin/env cwl-runner

baseCommand:
- cd-hit-est
class: CommandLineTool
cwlVersion: v1.0
id: cd-hit-est
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
