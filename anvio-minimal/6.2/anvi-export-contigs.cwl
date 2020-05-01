#!/usr/bin/env cwl-runner

baseCommand:
- anvi-export-contigs
class: CommandLineTool
cwlVersion: v1.0
id: anvi-export-contigs
inputs:
- doc: ''
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: ''
  id: splits_mode
  inputBinding:
    prefix: --splits-mode
  type: boolean
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: File
