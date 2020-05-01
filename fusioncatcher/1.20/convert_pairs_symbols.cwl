#!/usr/bin/env cwl-runner

baseCommand:
- convert_pairs_symbols.py
class: CommandLineTool
cwlVersion: v1.0
id: convert_pairs_symbols.py
inputs:
- doc: The input file containing on each line two gene symbols separated by tab.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The output file which will contain the Ensembl gene ids, where are two genes
    ids per line separated by tab.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Input file containing the Ensembl Ids of genes pairs which should be removed,
    where are two genes ids per line separated by tab.
  id: filter
  inputBinding:
    prefix: --filter
  type: string
