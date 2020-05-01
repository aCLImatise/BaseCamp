#!/usr/bin/env cwl-runner

baseCommand:
- dng
class: CommandLineTool
cwlVersion: v1.0
id: dng
inputs:
- doc: ''
  id: command
  inputBinding:
    position: 0
  type: string
