#!/usr/bin/env cwl-runner

baseCommand:
- interop_aggregate
class: CommandLineTool
cwlVersion: v1.0
id: interop_aggregate
inputs:
- doc: '[0]: Maximum tile number to include'
  id: max_tile
  inputBinding:
    prefix: --max-tile
  type: boolean
