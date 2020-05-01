#!/usr/bin/env cwl-runner

baseCommand:
- runcabog.py
class: CommandLineTool
cwlVersion: v1.0
id: runcabog.py
inputs:
- doc: ''
  id: para_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: readfile
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: library_info_file
  inputBinding:
    position: 2
  type: string
