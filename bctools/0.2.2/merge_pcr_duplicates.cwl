#!/usr/bin/env cwl-runner

baseCommand:
- merge_pcr_duplicates.py
class: CommandLineTool
cwlVersion: v1.0
id: merge_pcr_duplicates.py
inputs:
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ''
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: ''
  id: d
  inputBinding:
    prefix: -d
  type: boolean
