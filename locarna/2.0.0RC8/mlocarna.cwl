#!/usr/bin/env cwl-runner

baseCommand:
- mlocarna
class: CommandLineTool
cwlVersion: v1.0
id: mlocarna
inputs:
- doc: ''
  id: fast_a_file
  inputBinding:
    position: 0
  type: string
