#!/usr/bin/env cwl-runner

baseCommand:
- seq
class: CommandLineTool
cwlVersion: v1.0
id: seq
inputs:
- doc: use printf style floating-point FORMAT
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: 'use STRING to separate numbers (default: \n)'
  id: separator
  inputBinding:
    prefix: --separator
  type: string
- doc: equalize width by padding with leading zeroes
  id: equal_width
  inputBinding:
    prefix: --equal-width
  type: boolean
