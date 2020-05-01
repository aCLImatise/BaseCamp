#!/usr/bin/env cwl-runner

baseCommand:
- import_igenome
class: CommandLineTool
cwlVersion: v1.0
id: import_igenome
inputs:
- doc: ''
  id: p
  inputBinding:
    prefix: -p
  type: File
- doc: ''
  id: g
  inputBinding:
    prefix: -g
  type: string
- doc: ''
  id: c
  inputBinding:
    prefix: -c
  type: string
