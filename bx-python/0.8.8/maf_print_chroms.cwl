#!/usr/bin/env cwl-runner

baseCommand:
- maf_print_chroms.py
class: CommandLineTool
cwlVersion: v1.0
id: maf_print_chroms.py
inputs:
- doc: ''
  id: ref_index
  inputBinding:
    position: 0
  type: string
