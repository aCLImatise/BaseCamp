#!/usr/bin/env cwl-runner

baseCommand:
- anvi-show-misc-data
class: CommandLineTool
cwlVersion: v1.0
id: anvi-show-misc-data
inputs:
- doc: ''
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: ''
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: ''
  id: d
  inputBinding:
    prefix: -D
  type: string
