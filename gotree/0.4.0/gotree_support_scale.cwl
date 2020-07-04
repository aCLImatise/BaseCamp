class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gotree_support_scale.cwl
inputs:
- id: factor
  doc: Branch support scaling factor (default 1)
  type: double
  inputBinding:
    prefix: --factor
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
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gotree
- support
- scale
