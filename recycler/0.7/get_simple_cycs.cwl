#!/usr/bin/env cwl-runner

baseCommand:
- get_simple_cycs.py
class: CommandLineTool
cwlVersion: v1.0
id: get_simple_cycs.py
inputs:
- doc: ''
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: ''
  id: m
  inputBinding:
    prefix: -m
  type: long
