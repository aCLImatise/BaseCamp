class: CommandLineTool
id: gotree_support_round.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: precision
  doc: Rounding support precision (x means 10^-x) (default 3)
  type: long
  inputBinding:
    prefix: --precision
- id: format
  doc: Input tree format (newick, nexus, or phyloxml) (default "newick")
  type: string
  inputBinding:
    prefix: --format
- id: input
  doc: Input tree (default "stdin")
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Cleared tree output file (default "stdout")
  type: string
  inputBinding:
    prefix: --output
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
- support
- round
