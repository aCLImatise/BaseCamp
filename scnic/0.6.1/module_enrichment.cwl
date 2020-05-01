#!/usr/bin/env cwl-runner

baseCommand:
- module_enrichment.py
class: CommandLineTool
cwlVersion: v1.0
id: module_enrichment.py
inputs:
- doc: Annotate correls.txt file
  id: annotate
  inputBinding:
    position: 0
  type: string
- doc: Run permutation generation
  id: perms
  inputBinding:
    position: 1
  type: string
- doc: Generate p-values from the permutations
  id: stats
  inputBinding:
    position: 2
  type: string
