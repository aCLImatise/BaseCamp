#!/usr/bin/env cwl-runner

baseCommand:
- shuffle.py
class: CommandLineTool
cwlVersion: v1.0
id: shuffle.py
inputs:
- doc: The first FASTQ input file containing the short reads to be interleaved.
  id: input_1
  inputBinding:
    prefix: --input_1
  type: string
- doc: The second FASTQ input file containing the short reads to be interleaved.
  id: input_2
  inputBinding:
    prefix: --input_2
  type: string
- doc: The output FASTQ file where the short reads from the two input FASTQ files
    are interleaved.
  id: output
  inputBinding:
    prefix: --output
  type: string
