#!/usr/bin/env cwl-runner

baseCommand:
- add_ambiguous_counts.py
class: CommandLineTool
cwlVersion: v1.0
id: add_ambiguous_counts.py
inputs:
- doc: File containing the candidate fusion genes.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: File containing the pairs of genes and their corresponding number of reads
    which map ambiguously on each other.
  id: input_ambiguous
  inputBinding:
    prefix: --input_ambiguous
  type: string
- doc: File containing the candidate fusion genes from the input and an extra column
    with their associatied counts of common mapping reads.
  id: output
  inputBinding:
    prefix: --output
  type: string
