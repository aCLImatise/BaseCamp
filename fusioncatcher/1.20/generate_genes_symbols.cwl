#!/usr/bin/env cwl-runner

baseCommand:
- generate_genes_symbols.py
class: CommandLineTool
cwlVersion: v1.0
id: generate_genes_symbols.py
inputs:
- doc: The name of the organism for which the genes positions are downloaded, e.g.
    homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'.
  id: organism
  inputBinding:
    prefix: --organism
  type: string
- doc: The output directory where the genes positions are stored. Default is '.'.
  id: output
  inputBinding:
    prefix: --output
  type: string
