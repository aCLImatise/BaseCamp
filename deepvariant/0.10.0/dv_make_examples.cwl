#!/usr/bin/env cwl-runner

baseCommand:
- dv_make_examples.py
class: CommandLineTool
cwlVersion: v1.0
id: dv_make_examples.py
inputs:
- doc: '[-h]'
  id: examples
  inputBinding:
    prefix: --examples
  type: string
