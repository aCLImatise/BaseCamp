#!/usr/bin/env cwl-runner

baseCommand:
- flair.py
class: CommandLineTool
cwlVersion: v1.0
id: flair.py
inputs:
- doc: ''
  id: python
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: flair_py
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: mode
  inputBinding:
    position: 2
  type: string
