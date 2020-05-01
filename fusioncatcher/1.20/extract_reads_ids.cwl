#!/usr/bin/env cwl-runner

baseCommand:
- extract_reads_ids.py
class: CommandLineTool
cwlVersion: v1.0
id: extract_reads_ids.py
inputs:
- doc: The input file in FASTQ format.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The output text file containinf the reads ids.
  id: output
  inputBinding:
    prefix: --output
  type: string
