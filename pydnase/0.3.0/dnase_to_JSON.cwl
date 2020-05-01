#!/usr/bin/env cwl-runner

baseCommand:
- dnase_to_JSON.py
class: CommandLineTool
cwlVersion: v1.0
id: dnase_to_json.py
inputs:
- doc: ''
  id: w
  inputBinding:
    prefix: -w
  type: string
- doc: ''
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: ''
  id: a
  inputBinding:
    prefix: -A
  type: boolean
