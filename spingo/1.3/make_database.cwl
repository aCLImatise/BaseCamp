#!/usr/bin/env cwl-runner

baseCommand:
- make_database.py
class: CommandLineTool
cwlVersion: v1.0
id: make_database.py
inputs:
- doc: ''
  id: tax_file
  inputBinding:
    position: 0
  type: string
