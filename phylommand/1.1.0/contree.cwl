#!/usr/bin/env cwl-runner

baseCommand:
- contree
class: CommandLineTool
cwlVersion: v1.0
id: contree
inputs:
- doc: as last argument).
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: (default w).
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: .
  id: calculate_support
  inputBinding:
    prefix: --calculate_support
  type: boolean
