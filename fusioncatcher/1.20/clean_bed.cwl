#!/usr/bin/env cwl-runner

baseCommand:
- clean_bed.py
class: CommandLineTool
cwlVersion: v1.0
id: clean_bed.py
inputs:
- doc: The input (sorted) BED file.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The output (sorted) BED file.
  id: output
  inputBinding:
    prefix: --output
  type: string
