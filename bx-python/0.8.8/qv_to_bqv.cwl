#!/usr/bin/env cwl-runner

baseCommand:
- qv_to_bqv.py
class: CommandLineTool
cwlVersion: v1.0
id: qv_to_bqv.py
inputs:
- doc: ''
  id: qual_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: output_file
  inputBinding:
    position: 1
  type: string
