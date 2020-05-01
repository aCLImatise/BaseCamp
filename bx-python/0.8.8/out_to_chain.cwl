#!/usr/bin/env cwl-runner

baseCommand:
- out_to_chain.py
class: CommandLineTool
cwlVersion: v1.0
id: out_to_chain.py
inputs:
- doc: File to process.
  id: input
  inputBinding:
    position: 0
  type: string
- doc: "SPECIES Names of target and query species (respectively) in the alignment.\
    \ (default: ['homo_sapiens', 'mus_musculus'])"
  id: species
  inputBinding:
    prefix: --species
  type: string
- doc: 'CHRSIZES Chromosome sizes for the given species. (default: None)'
  id: chr_sizes
  inputBinding:
    prefix: --chrsizes
  type: string
- doc: 'Output file (default: stdout)'
  id: output
  inputBinding:
    prefix: --output
  type: File
