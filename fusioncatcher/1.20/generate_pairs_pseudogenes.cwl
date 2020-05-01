#!/usr/bin/env cwl-runner

baseCommand:
- generate_pairs_pseudogenes.py
class: CommandLineTool
cwlVersion: v1.0
id: generate_pairs_pseudogenes.py
inputs:
- doc: Input file with genes positions.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: Input file containing the paralogs genes. It is optional and by using the pairs
    of paralog genes are combined with the pairs of pseudogenes.
  id: paralogs
  inputBinding:
    prefix: --paralogs
  type: string
- doc: The output directory where the list of pairs of pseudogenes are written. Default
    is '.'.
  id: output
  inputBinding:
    prefix: --output
  type: string
