#!/usr/bin/env cwl-runner

baseCommand:
- nw_support
class: CommandLineTool
cwlVersion: v1.0
id: nw_support
inputs:
- doc: ': prints values as percentages (default: absolute frequencies)'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
