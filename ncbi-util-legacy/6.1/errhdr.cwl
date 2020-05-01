#!/usr/bin/env cwl-runner

baseCommand:
- errhdr
class: CommandLineTool
cwlVersion: v1.0
id: errhdr
inputs:
- doc: short subcode defines
  id: s
  inputBinding:
    prefix: -s
  type: string
