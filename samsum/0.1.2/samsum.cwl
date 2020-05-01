#!/usr/bin/env cwl-runner

baseCommand:
- samsum
class: CommandLineTool
cwlVersion: v1.0
id: samsum
inputs:
- doc: ''
  id: command
  inputBinding:
    position: 0
  type: string
