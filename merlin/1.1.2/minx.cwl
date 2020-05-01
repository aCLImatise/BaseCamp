#!/usr/bin/env cwl-runner

baseCommand:
- minx
class: CommandLineTool
cwlVersion: v1.0
id: minx
inputs:
- doc: '[merlin]'
  id: tabulate
  inputBinding:
    prefix: --tabulate
  type: boolean
