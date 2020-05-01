#!/usr/bin/env cwl-runner

baseCommand:
- interop_index-summary
class: CommandLineTool
cwlVersion: v1.0
id: interop_index-summary
inputs:
- doc: '[0]: Format output as CSV only'
  id: csv
  inputBinding:
    prefix: --csv
  type: boolean
