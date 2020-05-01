#!/usr/bin/env cwl-runner

baseCommand:
- anvi-script-estimate-genome-size
class: CommandLineTool
cwlVersion: v1.0
id: anvi-script-estimate-genome-size
inputs:
- doc: ''
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: ''
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
