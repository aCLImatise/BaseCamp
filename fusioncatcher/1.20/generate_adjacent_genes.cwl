#!/usr/bin/env cwl-runner

baseCommand:
- generate_adjacent_genes.py
class: CommandLineTool
cwlVersion: v1.0
id: generate_adjacent_genes.py
inputs:
- doc: Input file with genes positions.
  id: input_genes
  inputBinding:
    prefix: --input_genes
  type: string
- doc: The output directory where the genes sequences are written. Default is '.'.
  id: output
  inputBinding:
    prefix: --output
  type: string
