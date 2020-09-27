class: CommandLineTool
id: centrifuge_kreport.cwl
inputs:
- id: in_required_centrifuge_index
  doc: (REQUIRED) Centrifuge index
  type: string
  inputBinding:
    prefix: -x
- id: in_no_lca
  doc: Do not report the LCA of multiple assignments, but report count fractions at
    the taxa.
  type: boolean
  inputBinding:
    prefix: --no-lca
- id: in_show_zeros
  doc: Show clades that have zero reads, too
  type: boolean
  inputBinding:
    prefix: --show-zeros
- id: in_is_count_table
  doc: "The format of the file is 'taxID<tab>COUNT' instead of the standard\nCentrifuge\
    \ output format"
  type: File
  inputBinding:
    prefix: --is-count-table
- id: in_min_score
  doc: Require a minimum score for reads to be counted
  type: long
  inputBinding:
    prefix: --min-score
- id: in_min_length
  doc: Require a minimum alignment length to the read
  type: long
  inputBinding:
    prefix: --min-length
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_is_count_table
  doc: "The format of the file is 'taxID<tab>COUNT' instead of the standard\nCentrifuge\
    \ output format"
  type: File
  outputBinding:
    glob: $(inputs.in_is_count_table)
cwlVersion: v1.1
baseCommand:
- centrifuge-kreport
