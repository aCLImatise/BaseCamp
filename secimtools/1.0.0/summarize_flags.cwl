#!/usr/bin/env cwl-runner

baseCommand:
- summarize_flags.py
class: CommandLineTool
cwlVersion: v1.0
id: summarize_flags.py
inputs:
- doc: ''
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: ''
  id: id
  inputBinding:
    prefix: -id
  type: string
- doc: ''
  id: os
  inputBinding:
    prefix: -os
  type: string
