#!/usr/bin/env cwl-runner

baseCommand:
- sample
class: CommandLineTool
cwlVersion: v1.0
id: sample
inputs:
- doc: ''
  id: option
  inputBinding:
    position: 0
  type: string
