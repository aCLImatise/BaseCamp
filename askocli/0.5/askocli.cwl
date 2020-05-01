#!/usr/bin/env cwl-runner

baseCommand:
- askocli
class: CommandLineTool
cwlVersion: v1.0
id: askocli
inputs:
- doc: ''
  id: command
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: args
  inputBinding:
    position: 1
  type: string
