#!/usr/bin/env cwl-runner

baseCommand:
- anvi-show-collections-and-bins
class: CommandLineTool
cwlVersion: v1.0
id: anvi-show-collections-and-bins
inputs:
- doc: ''
  id: p
  inputBinding:
    prefix: -p
  type: string
