#!/usr/bin/env cwl-runner

baseCommand:
- sequenza-utils
class: CommandLineTool
cwlVersion: v1.0
id: sequenza-utils
inputs:
- doc: Show all logging information
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
