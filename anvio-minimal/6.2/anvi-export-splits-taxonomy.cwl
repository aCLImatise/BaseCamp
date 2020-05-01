#!/usr/bin/env cwl-runner

baseCommand:
- anvi-export-splits-taxonomy
class: CommandLineTool
cwlVersion: v1.0
id: anvi-export-splits-taxonomy
inputs:
- doc: ''
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: File
