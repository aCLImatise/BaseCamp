#!/usr/bin/env cwl-runner

baseCommand:
- format_fasta
class: CommandLineTool
cwlVersion: v1.0
id: format_fasta
inputs:
- doc: ''
  id: input_fast_a
  inputBinding:
    prefix: --inputfasta
  type: string
- doc: ''
  id: output_fast_a
  inputBinding:
    prefix: --outputfasta
  type: string
