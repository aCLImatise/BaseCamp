#!/usr/bin/env cwl-runner

baseCommand:
- splitchr.py
class: CommandLineTool
cwlVersion: v1.0
id: splitchr.py
inputs:
- doc: ''
  id: bed
  inputBinding:
    prefix: --bed
  type: string
- doc: ''
  id: reformat
  inputBinding:
    prefix: --reformat
  type: boolean
