#!/usr/bin/env cwl-runner

baseCommand:
- interop_summary
class: CommandLineTool
cwlVersion: v1.0
id: interop_summary
inputs:
- doc: '[5]: Level of summary information: 0: total, 1: non-index, 2: Read, 3: Lane,
    4: Surface'
  id: level
  inputBinding:
    prefix: --level
  type: boolean
- doc: '[0]: Format output as CSV only'
  id: csv
  inputBinding:
    prefix: --csv
  type: boolean
