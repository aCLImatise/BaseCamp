#!/usr/bin/env cwl-runner

baseCommand:
- maf_build_index.py
class: CommandLineTool
cwlVersion: v1.0
id: maf_build_index.py
inputs:
- doc: ''
  id: maf_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: index_file
  inputBinding:
    position: 1
  type: string
- doc: only index the position of the block in the listed species
  id: species
  inputBinding:
    prefix: --species
  type: string
