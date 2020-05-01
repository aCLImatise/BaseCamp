#!/usr/bin/env cwl-runner

baseCommand:
- hitac.py
class: CommandLineTool
cwlVersion: v1.0
id: hitac.py
inputs:
- doc: ''
  id: km_er
  inputBinding:
    prefix: --kmer
  type: string
- doc: ''
  id: threads
  inputBinding:
    prefix: --threads
  type: string
