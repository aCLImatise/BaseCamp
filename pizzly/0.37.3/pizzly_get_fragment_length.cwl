#!/usr/bin/env cwl-runner

baseCommand:
- pizzly_get_fragment_length.py
class: CommandLineTool
cwlVersion: v1.0
id: pizzly_get_fragment_length.py
inputs:
- doc: ''
  id: python
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: get_fragment_length_py
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: h5_file
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: cut_off
  inputBinding:
    position: 3
  type: string
