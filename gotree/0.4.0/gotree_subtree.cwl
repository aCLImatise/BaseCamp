class: CommandLineTool
id: gotree_subtree.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: Input tree (default "stdin")
  type: string
  inputBinding:
    prefix: --input
- id: name
  doc: Name of the node to select as the root of the subtree (maybe a regex) (default
    "none")
  type: string
  inputBinding:
    prefix: --name
- id: output
  doc: Output tree file (default "stdout")
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
- subtree
