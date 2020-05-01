#!/usr/bin/env cwl-runner

baseCommand:
- removeRedundant
class: CommandLineTool
cwlVersion: v1.0
id: removeredundant
inputs:
- doc: ''
  id: polishes_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: gff3
  inputBinding:
    prefix: -gff3
  type: boolean
