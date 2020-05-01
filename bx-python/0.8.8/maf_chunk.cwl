#!/usr/bin/env cwl-runner

baseCommand:
- maf_chunk.py
class: CommandLineTool
cwlVersion: v1.0
id: maf_chunk.py
inputs:
- doc: ''
  id: chunk_size
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: out_dir
  inputBinding:
    position: 1
  type: string
- doc: Probability of writing a given chunk
  id: prob
  inputBinding:
    prefix: --prob
  type: string
