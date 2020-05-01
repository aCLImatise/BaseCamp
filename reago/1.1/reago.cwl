#!/usr/bin/env cwl-runner

baseCommand:
- reago.py
class: CommandLineTool
cwlVersion: v1.0
id: reago.py
inputs:
- doc: ''
  id: python
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: re_ago_py
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: filename_fast_a
  inputBinding:
    position: 2
  type: File
- doc: ''
  id: output_dir
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: l
  inputBinding:
    prefix: -l
  type: string
