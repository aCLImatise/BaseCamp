#!/usr/bin/env cwl-runner

baseCommand:
- pslCheck
class: CommandLineTool
cwlVersion: v1.0
id: pslcheck
inputs:
- doc: error message, just filter
  id: quiet
  inputBinding:
    prefix: -quiet
  type: string
