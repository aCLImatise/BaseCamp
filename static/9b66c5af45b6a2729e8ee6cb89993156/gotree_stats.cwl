class: CommandLineTool
id: gotree_stats.cwl
inputs:
- id: nodes
  doc: Displays statistics on nodes of input tree
  type: string
  inputBinding:
    position: 0
- id: rooted
  doc: Tells wether the tree is rooted or unrooted
  type: string
  inputBinding:
    position: 1
- id: splits
  doc: Prints all the splits from an input tree
  type: string
  inputBinding:
    position: 2
- id: tips
  doc: Displays statistics on tips of input tree
  type: string
  inputBinding:
    position: 3
- id: input
  doc: Input tree (default "stdin")
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Output file (default "stdout")
  type: string
  inputBinding:
    prefix: --output
- id: format
  doc: Input tree format (newick, nexus, or phyloxml) (default "newick")
  type: string
  inputBinding:
    prefix: --format
- id: seed
  doc: 'Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)'
  type: long
  inputBinding:
    prefix: --seed
- id: threads
  doc: Number of threads (Max=8) (default 1)
  type: long
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- gotree
- stats
