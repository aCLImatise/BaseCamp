#!/usr/bin/env cwl-runner

baseCommand:
- wiggle_to_binned_array.py
class: CommandLineTool
cwlVersion: v1.0
id: wiggle_to_binned_array.py
inputs:
- doc: ': compression type (none, zlib, lzo)'
  id: comp
  inputBinding:
    prefix: --comp
  type: string
