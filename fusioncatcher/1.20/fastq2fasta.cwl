#!/usr/bin/env cwl-runner

baseCommand:
- fastq2fasta.py
class: CommandLineTool
cwlVersion: v1.0
id: fastq2fasta.py
inputs:
- doc: The input file in FASTQ format (Solexa).
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The output FASTA file.
  id: output
  inputBinding:
    prefix: --output
  type: string
