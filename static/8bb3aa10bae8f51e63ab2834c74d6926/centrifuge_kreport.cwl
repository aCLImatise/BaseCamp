class: CommandLineTool
id: centrifuge_kreport.cwl
inputs:
- id: x
  doc: (REQUIRED) Centrifuge index
  type: string
  inputBinding:
    prefix: -x
- id: no_lca
  doc: Do not report the LCA of multiple assignments, but report count fractions at
    the taxa.
  type: boolean
  inputBinding:
    prefix: --no-lca
- id: show_zeros
  doc: Show clades that have zero reads, too
  type: boolean
  inputBinding:
    prefix: --show-zeros
- id: is_count_table
  doc: The format of the file is 'taxID<tab>COUNT' instead of the standard Centrifuge
    output format
  type: boolean
  inputBinding:
    prefix: --is-count-table
- id: min_score
  doc: Require a minimum score for reads to be counted
  type: string
  inputBinding:
    prefix: --min-score
- id: min_length
  doc: Require a minimum alignment length to the read
  type: long
  inputBinding:
    prefix: --min-length
outputs: []
cwlVersion: v1.1
baseCommand:
- centrifuge-kreport
