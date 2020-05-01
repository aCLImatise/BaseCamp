#!/usr/bin/env cwl-runner

baseCommand:
- Lengths.py
class: CommandLineTool
cwlVersion: v1.0
id: lengths.py
inputs:
- doc: fasta file
  id: input_file
  inputBinding:
    prefix: --inputfile
  type: File
