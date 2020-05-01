#!/usr/bin/env cwl-runner

baseCommand:
- anvi-import-state
class: CommandLineTool
cwlVersion: v1.0
id: anvi-import-state
inputs:
- doc: ''
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: ''
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: ''
  id: n
  inputBinding:
    prefix: -n
  type: string
