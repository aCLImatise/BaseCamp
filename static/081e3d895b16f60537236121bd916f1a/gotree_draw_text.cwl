class: CommandLineTool
id: gotree_draw_text.cwl
inputs:
- id: in_width
  doc: Width of tree/terminal (in characters) (default 200)
  type: long
  inputBinding:
    prefix: --width
- id: in_format
  doc: Input tree format (newick, nexus, or phyloxml) (default "newick")
  type: string
  inputBinding:
    prefix: --format
- id: in_input
  doc: Input tree (default "stdin")
  type: string
  inputBinding:
    prefix: --input
- id: in_no_branch_lengths
  doc: Draw the tree without branch lengths (all the same length)
  type: boolean
  inputBinding:
    prefix: --no-branch-lengths
- id: in_no_tip_labels
  doc: Draw the tree without tip labels
  type: boolean
  inputBinding:
    prefix: --no-tip-labels
- id: in_output
  doc: Output file (default "stdout")
  type: File
  inputBinding:
    prefix: --output
- id: in_seed
  doc: 'Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)'
  type: long
  inputBinding:
    prefix: --seed
- id: in_support_cut_off
  doc: Cutoff for highlithing supported branches (default 0.7)
  type: double
  inputBinding:
    prefix: --support-cutoff
- id: in_threads
  doc: Number of threads (Max=8) (default 1)
  type: long
  inputBinding:
    prefix: --threads
- id: in_with_branch_support
  doc: Highlight highly supported branches
  type: boolean
  inputBinding:
    prefix: --with-branch-support
- id: in_with_node_comments
  doc: Draw the tree with internal node comments (if --with-node-labels is not set)
  type: boolean
  inputBinding:
    prefix: --with-node-comments
- id: in_with_node_labels
  doc: Draw the tree with internal node labels
  type: boolean
  inputBinding:
    prefix: --with-node-labels
- id: in_with_node_symbols
  doc: Draw the tree with internal node symbols
  type: boolean
  inputBinding:
    prefix: --with-node-symbols
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file (default "stdout")
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- gotree
- draw
- text
