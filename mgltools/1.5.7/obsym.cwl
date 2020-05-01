#!/usr/bin/env cwl-runner

baseCommand:
- obsym
class: CommandLineTool
cwlVersion: v1.0
id: obsym
inputs:
- doc: ''
  id: input_file
  inputBinding:
    position: 0
  type: string
