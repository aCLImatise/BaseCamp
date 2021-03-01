class: CommandLineTool
id: gotree_stats.cwl
inputs:
- id: in_input
  doc: Input tree (default "stdin")
  type: string?
  inputBinding:
    prefix: --input
- id: in_output
  doc: Output file (default "stdout")
  type: File?
  inputBinding:
    prefix: --output
- id: in_format
  doc: Input tree format (newick, nexus, or phyloxml) (default "newick")
  type: string?
  inputBinding:
    prefix: --format
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
- id: in_edges
  doc: Displays statistics on edges of input tree
  type: string
  inputBinding:
    position: 0
- id: in_nodes
  doc: Displays statistics on nodes of input tree
  type: string
  inputBinding:
    position: 0
- id: in_rooted
  doc: Tells wether the tree is rooted or unrooted
  type: string
  inputBinding:
    position: 1
- id: in_splits
  doc: Prints all the splits from an input tree
  type: string
  inputBinding:
    position: 2
- id: in_tips
  doc: Displays statistics on tips of input tree
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file (default "stdout")
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- gotree
- stats
