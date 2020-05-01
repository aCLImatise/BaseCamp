#!/usr/bin/env cwl-runner

baseCommand:
- maf-swap
class: CommandLineTool
cwlVersion: v1.0
id: maf-swap
inputs:
- doc: ''
  id: my_alignments_maf
  inputBinding:
    position: 0
  type: string
- doc: 'move the Nth sequence to the top (default: 2)'
  id: n
  inputBinding:
    prefix: -n
  type: string
