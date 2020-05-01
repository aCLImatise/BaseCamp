#!/usr/bin/env cwl-runner

baseCommand:
- unshuffle.py
class: CommandLineTool
cwlVersion: v1.0
id: unshuffle.py
inputs:
- doc: The first FASTQ input file containing the short reads which are interleaved.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The output FASTQ file where the forward short reads from the input FASTQ.
  id: forward
  inputBinding:
    prefix: --forward
  type: string
- doc: The output FASTQ file where the reverse short reads from the input FASTQ.
  id: reverse
  inputBinding:
    prefix: --reverse
  type: string
