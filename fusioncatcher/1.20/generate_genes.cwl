#!/usr/bin/env cwl-runner

baseCommand:
- generate_genes.py
class: CommandLineTool
cwlVersion: v1.0
id: generate_genes.py
inputs:
- doc: Input file with genes positions.
  id: input_genes
  inputBinding:
    prefix: --input_genes
  type: string
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
