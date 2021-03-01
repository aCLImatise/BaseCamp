class: CommandLineTool
id: gotree_rotate.cwl
inputs:
- id: in_input
  doc: Input tree (default "stdin")
  type: string?
  inputBinding:
    prefix: --input
- id: in_output
  doc: Rotated tree output file (default "stdout")
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
- id: in_rand
  doc: Randomly rotates children of internal nodes
  type: string
  inputBinding:
    position: 0
- id: in_sort
  doc: Sorts children of internal nodes by number of tips
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Rotated tree output file (default "stdout")
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- gotree
- rotate
