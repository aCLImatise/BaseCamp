#!/usr/bin/env cwl-runner

baseCommand:
- check-sort-order
class: CommandLineTool
cwlVersion: v1.0
id: check-sort-order
inputs:
- doc: ''
  id: path
  inputBinding:
    position: 0
  type: File
- doc: ''
  id: genome
  inputBinding:
    prefix: --genome
  type: string
