#!/usr/bin/env cwl-runner

baseCommand:
- sliding-read.py
class: CommandLineTool
cwlVersion: v1.0
id: sliding-read.py
inputs:
- doc: The first FASTQ input file containing the short reads which are interleaved.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The size of window.
  id: window
  inputBinding:
    prefix: --window
  type: string
- doc: The size of window.
  id: step
  inputBinding:
    prefix: --step
  type: string
- doc: The output FASTQ file.
  id: output
  inputBinding:
    prefix: --output
  type: string
