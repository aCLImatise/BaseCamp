#!/usr/bin/env cwl-runner

baseCommand:
- make_fasta_from_fastg.py
class: CommandLineTool
cwlVersion: v1.0
id: make_fasta_from_fastg.py
inputs:
- doc: ''
  id: g
  inputBinding:
    prefix: -g
  type: string
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: string
