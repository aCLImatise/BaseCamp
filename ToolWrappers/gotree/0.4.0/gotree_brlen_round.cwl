class: CommandLineTool
id: gotree_brlen_round.cwl
inputs:
- id: in_output
  doc: Rounded length output tree file (default "stdout")
  type: long
  inputBinding:
    prefix: --output
- id: in_precision
  doc: Rounding length precision (x means 10^-x) (default 3)
  type: long
  inputBinding:
    prefix: --precision
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
- id: in_seed
  doc: 'Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)'
  type: long
  inputBinding:
    prefix: --seed
- id: in_threads
  doc: Number of threads (Max=8) (default 1)
  type: long
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gotree
- brlen
- round
