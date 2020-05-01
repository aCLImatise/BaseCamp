#!/usr/bin/env cwl-runner

baseCommand:
- treesapp
class: CommandLineTool
cwlVersion: v1.0
id: treesapp
inputs:
- doc: ''
  id: command
  inputBinding:
    position: 0
  type: string
