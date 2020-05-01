#!/usr/bin/env cwl-runner

baseCommand:
- smoothing_fusions_psl.py
class: CommandLineTool
cwlVersion: v1.0
id: smoothing_fusions_psl.py
inputs:
- doc: The input file containing the reads alignments supporting potential fusion
    genes.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The maximum size of the clipping done in the alignment gaps of the reads. Default
    is '3'.
  id: wiggle
  inputBinding:
    prefix: --wiggle
  type: string
- doc: The output file containing reads alignments suporting potential fusion genes,
    such that the split reads are overlapping more.
  id: output
  inputBinding:
    prefix: --output
  type: string
