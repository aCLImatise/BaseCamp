class: CommandLineTool
id: pick_otus_condense.py.cwl
inputs:
- id: in_seqs_otus
  doc: The list of OTU IDs and their associated sequence IDs.
  type: string?
  inputBinding:
    prefix: --seqs_otus
- id: in_non_unique_otu_matrix
  doc: "The list of unique OTU IDs associated with the OTU IDs\nthey replaced."
  type: string?
  inputBinding:
    prefix: --non_unique_otu_matrix
- id: in_condensed_seqs_otus_file
  doc: "The condensed set of OTU IDs and the matching\nsequences. By default outputs\
    \ to\ncondensed_seqs_otus.txt"
  type: File?
  inputBinding:
    prefix: --condensed_seqs_otus_file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pick_otus_condense.py
