#!/usr/bin/env cwl-runner

baseCommand:
- seq_trim_fastq.py
class: CommandLineTool
cwlVersion: v1.0
id: seq_trim_fastq.py
inputs:
- doc: Number of base pairs to trim from the left.
  id: left
  inputBinding:
    prefix: --left
  type: string
- doc: Number of base pairs to trim from the right.
  id: right
  inputBinding:
    prefix: --right
  type: string
