#!/usr/bin/env cwl-runner

baseCommand:
- print_picrust_config.py
class: CommandLineTool
cwlVersion: v1.0
id: print_picrust_config.py
inputs:
- doc: 'Print information during execution -- useful for debugging [default: False]'
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
