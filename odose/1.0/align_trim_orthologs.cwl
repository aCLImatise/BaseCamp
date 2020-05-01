#!/usr/bin/env cwl-runner

baseCommand:
- align_trim_orthologs.py
class: CommandLineTool
cwlVersion: v1.0
id: align_trim_orthologs.py
inputs:
- doc: ''
  id: filter_ortholog_spy
  inputBinding:
    position: 0
  type: string
