#!/usr/bin/env cwl-runner

baseCommand:
- merlin
class: CommandLineTool
cwlVersion: v1.0
id: merlin
inputs:
- doc: '[merlin]'
  id: tabulate
  inputBinding:
    prefix: --tabulate
  type: boolean
