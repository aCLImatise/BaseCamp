#!/usr/bin/env cwl-runner

baseCommand:
- anvi-oligotype-linkmers
class: CommandLineTool
cwlVersion: v1.0
id: anvi-oligotype-linkmers
inputs:
- doc: ''
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: string
