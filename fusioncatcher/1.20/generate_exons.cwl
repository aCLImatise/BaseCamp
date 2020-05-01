#!/usr/bin/env cwl-runner

baseCommand:
- generate_exons.py
class: CommandLineTool
cwlVersion: v1.0
id: generate_exons.py
inputs:
- doc: Input file with exons positions.
  id: input_exons
  inputBinding:
    prefix: --input_exons
  type: string
- doc: Input FASTA genome containing the genome sequences.
  id: input_genome
  inputBinding:
    prefix: --input_genome
  type: string
- doc: The output directory where the exons sequences are written. Default is '.'.
  id: output
  inputBinding:
    prefix: --output
  type: string
