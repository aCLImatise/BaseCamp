#!/usr/bin/env cwl-runner

baseCommand:
- show-snps
class: CommandLineTool
cwlVersion: v1.0
id: show-snps
inputs:
- doc: ''
  id: delta_file
  inputBinding:
    position: 0
  type: string
