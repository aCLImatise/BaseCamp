#!/usr/bin/env cwl-runner

baseCommand:
- centrifuge-kreport
class: CommandLineTool
cwlVersion: v1.0
id: centrifuge-kreport
inputs:
- doc: (REQUIRED) Centrifuge index
  id: x
  inputBinding:
    prefix: -x
  type: string
- doc: Do not report the LCA of multiple assignments, but report count fractions at
    the taxa.
  id: no_lca
  inputBinding:
    prefix: --no-lca
  type: boolean
- doc: Show clades that have zero reads, too
  id: show_zeros
  inputBinding:
    prefix: --show-zeros
  type: boolean
- doc: The format of the file is 'taxID<tab>COUNT' instead of the standard Centrifuge
    output format
  id: is_count_table
  inputBinding:
    prefix: --is-count-table
  type: boolean
- doc: Require a minimum score for reads to be counted
  id: min_score
  inputBinding:
    prefix: --min-score
  type: string
- doc: Require a minimum alignment length to the read
  id: min_length
  inputBinding:
    prefix: --min-length
  type: long
