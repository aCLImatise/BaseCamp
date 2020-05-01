#!/usr/bin/env cwl-runner

baseCommand:
- bwcat
class: CommandLineTool
cwlVersion: v1.0
id: bwcat
inputs:
- doc: ''
  id: i
  inputBinding:
    prefix: -i
  type: string
