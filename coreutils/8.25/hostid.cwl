#!/usr/bin/env cwl-runner

baseCommand:
- hostid
class: CommandLineTool
cwlVersion: v1.0
id: hostid
inputs:
- doc: ''
  id: option
  inputBinding:
    position: 0
  type: string
