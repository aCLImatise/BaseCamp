#!/usr/bin/env cwl-runner

baseCommand:
- ecofind
class: CommandLineTool
cwlVersion: v1.0
id: ecofind
inputs:
- doc: ''
  id: patterns
  inputBinding:
    position: 0
  type: string
