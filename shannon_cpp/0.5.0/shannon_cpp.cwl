#!/usr/bin/env cwl-runner

baseCommand:
- shannon_cpp
class: CommandLineTool
cwlVersion: v1.0
id: shannon_cpp
inputs:
- doc: ''
  id: subcommand
  inputBinding:
    position: 0
  type: string
