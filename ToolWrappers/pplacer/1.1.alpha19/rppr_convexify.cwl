class: CommandLineTool
id: rppr_convexify.cwl
inputs:
- id: in_reference_package_path
  doc: Reference package path. Required.
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_node_numbers
  doc: Put the node numbers in where the bootstraps usually go.
  type: boolean?
  inputBinding:
    prefix: --node-numbers
- id: in_tree
  doc: A tree file in newick format to work on in place of a reference package.
  type: boolean?
  inputBinding:
    prefix: --tree
- id: in_colors
  doc: A CSV file of the colors on the tree supplied with --tree.
  type: boolean?
  inputBinding:
    prefix: --colors
- id: in_specified_path_the
  doc: If specified, the path to write the discordance tree to.
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_cut_seqs
  doc: If specified, the path to write a CSV file of cut sequences per-rank to.
  type: boolean?
  inputBinding:
    prefix: --cut-seqs
- id: in_alternates
  doc: If specified, the path to write a CSV file of alternate colors per-sequence
    to.
  type: boolean?
  inputBinding:
    prefix: --alternates
- id: in_check_all_ranks
  doc: When determining alternate colors, check all ranks instead of the least recent
    uncut rank.
  type: boolean?
  inputBinding:
    prefix: --check-all-ranks
- id: in_all_alternates
  doc: When determining alternate colors, ignore the taxononomy and show all alternates.
  type: boolean?
  inputBinding:
    prefix: --all-alternates
- id: in_cut_off
  doc: 'Any trees with a maximum badness over this value are skipped. Default: 12.'
  type: boolean?
  inputBinding:
    prefix: --cutoff
- id: in_limit_rank
  doc: If specified, only convexify at the given ranks. Ranks are given as a comma-delimited
    list of names.
  type: boolean?
  inputBinding:
    prefix: --limit-rank
- id: in_timing
  doc: If specified, save timing information for solved trees to a CSV file.
  type: boolean?
  inputBinding:
    prefix: --timing
- id: in_rooted
  doc: Strictly evaluate convexity; ensure that each color sits in its own rooted
    subtree.
  type: boolean?
  inputBinding:
    prefix: --rooted
- id: in_naive
  doc: Use the naive convexify algorithm.
  type: boolean?
  inputBinding:
    prefix: --naive
- id: in_no_early
  doc: Don't terminate early when convexifying.
  type: boolean?
  inputBinding:
    prefix: --no-early
- id: in_help
  doc: Display this list of options
  type: boolean?
  inputBinding:
    prefix: --help
- id: in_convex_if_y
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rppr
- convexify
