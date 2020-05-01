#!/usr/bin/env cwl-runner

baseCommand:
- remove_shorter_reads.py
class: CommandLineTool
cwlVersion: v1.0
id: remove_shorter_reads.py
inputs:
- doc: The input file (in FASTQ format) containing the short reads to be processed.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The output FASTQ file containing the short reads where the reads which are
    shorter then a given threshold are removed.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: If if this is larger than zero then all the short reads strictly shorter than
    this threshold are removed. Default is 0.
  id: threshold
  inputBinding:
    prefix: --threshold
  type: string
