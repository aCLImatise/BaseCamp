class: CommandLineTool
id: mgaps.cwl
inputs:
- id: in_check_header_labels
  doc: Check that fasta header labels alternately have "Reverse"
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_fixed_diagonal_difference
  doc: Fixed diagonal difference to join matches
  type: long?
  inputBinding:
    prefix: -d
- id: in_use_extent_start
  doc: "Use extent of match (end - start) rather than sum of piece\nlengths to determine\
    \ length of cluster"
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_fraction_separation_diagonal
  doc: Fraction of separation for diagonal difference
  type: long?
  inputBinding:
    prefix: -f
- id: in_minimum_length_cluster
  doc: Minimum length of cluster match
  type: long?
  inputBinding:
    prefix: -l
- id: in_maximum_separation_matches
  doc: Maximum separation between matches in cluster
  type: long?
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mgaps
