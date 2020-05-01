#!/usr/bin/env cwl-runner

baseCommand:
- generate_chrom_lens.py
class: CommandLineTool
cwlVersion: v1.0
id: generate_chrom_lens.py
inputs:
- doc: Input FASTA genome containing the genome sequences.
  id: input_genome
  inputBinding:
    prefix: --input_genome
  type: string
- doc: The output directory where the genes sequences are written. Default is '.'.
  id: output
  inputBinding:
    prefix: --output
  type: string
