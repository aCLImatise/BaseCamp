class: CommandLineTool
id: gotree_compare_edges.cwl
inputs:
- id: in_moved_tax_a
  doc: 'only if --transfer-dist is given: Then display, for each branch, taxa that
    must be moved'
  type: boolean?
  inputBinding:
    prefix: --moved-taxa
- id: in_transfer_dist
  doc: If transfer dist must be computed for each edge
  type: boolean?
  inputBinding:
    prefix: --transfer-dist
- id: in_compared
  doc: Compared trees input file (default "none")
  type: File?
  inputBinding:
    prefix: --compared
- id: in_format
  doc: Input tree format (newick, nexus, or phyloxml) (default "newick")
  type: string?
  inputBinding:
    prefix: --format
- id: in_ref_tree
  doc: Reference tree input file (default "stdin")
  type: File?
  inputBinding:
    prefix: --reftree
- id: in_seed
  doc: 'Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_threads
  doc: Number of threads (Max=8) (default 1)
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gotree
- compare
- edges
