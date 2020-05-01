#!/usr/bin/env cwl-runner

baseCommand:
- vispr
class: CommandLineTool
cwlVersion: v1.0
id: vispr
inputs:
- doc: Print debug info.
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
