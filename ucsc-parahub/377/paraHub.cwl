#!/usr/bin/env cwl-runner

baseCommand:
- paraHub
class: CommandLineTool
cwlVersion: v1.0
id: parahub
inputs:
- doc: ''
  id: machine_list
  inputBinding:
    position: 0
  type: string
