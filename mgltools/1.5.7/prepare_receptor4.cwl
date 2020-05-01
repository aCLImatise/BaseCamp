#!/usr/bin/env cwl-runner

baseCommand:
- prepare_receptor4.py
class: CommandLineTool
cwlVersion: v1.0
id: prepare_receptor4.py
inputs:
- doc: 'receptor_filename '
  id: r
  inputBinding:
    prefix: -r
  type: boolean
