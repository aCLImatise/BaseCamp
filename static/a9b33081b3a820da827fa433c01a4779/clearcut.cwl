class: CommandLineTool
id: clearcut.cwl
inputs:
- id: in_verbose
  doc: 'More output. (Default: OFF)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: 'Silent operation. (Default: ON)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_seed
  doc: Explicitly set the PRNG seed to a specific value.
  type: string
  inputBinding:
    prefix: --seed
- id: in_no_random
  doc: 'Attempt joins deterministically.  (Default: OFF)'
  type: boolean
  inputBinding:
    prefix: --norandom
- id: in_shuffle
  doc: 'Randomly shuffle the distance matrix.  (Default: OFF)'
  type: boolean
  inputBinding:
    prefix: --shuffle
- id: in_neighbor
  doc: 'Use traditional Neighbor-Joining algorithm. (Default: OFF)'
  type: boolean
  inputBinding:
    prefix: --neighbor
- id: in_stdin
  doc: Read input from STDIN.
  type: boolean
  inputBinding:
    prefix: --stdin
- id: in_distance
  doc: 'Input file is a distance matrix. (Default: ON)'
  type: boolean
  inputBinding:
    prefix: --distance
- id: in_alignment
  doc: 'Input file is a set of aligned sequences. (Default: OFF)'
  type: boolean
  inputBinding:
    prefix: --alignment
- id: in_dna
  doc: Input alignment are DNA sequences.
  type: boolean
  inputBinding:
    prefix: --DNA
- id: in_protein
  doc: Input alignment are protein sequences.
  type: boolean
  inputBinding:
    prefix: --protein
- id: in_jukes
  doc: Use Jukes-Cantor correction for computing distance matrix.
  type: boolean
  inputBinding:
    prefix: --jukes
- id: in_kimura
  doc: Use Kimura correction for distance matrix.
  type: boolean
  inputBinding:
    prefix: --kimura
- id: in_stdout
  doc: Output tree to STDOUT.
  type: boolean
  inputBinding:
    prefix: --stdout
- id: in_matrix_out
  doc: Output distance matrix to specified file.
  type: File
  inputBinding:
    prefix: --matrixout
- id: in_n_trees
  doc: 'Output n trees.  (Default: 1)'
  type: long
  inputBinding:
    prefix: --ntrees
- id: in_exp_blen
  doc: 'Exponential notation for branch lengths. (Default: OFF)'
  type: boolean
  inputBinding:
    prefix: --expblen
- id: in_exp_dist
  doc: 'Exponential notation in distance output. (Default: OFF)'
  type: boolean
  inputBinding:
    prefix: --expdist
- id: in_out
  doc: ''
  type: File
  inputBinding:
    prefix: --out
- id: in_in
  doc: ''
  type: File
  inputBinding:
    prefix: --in
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_matrix_out
  doc: Output distance matrix to specified file.
  type: File
  outputBinding:
    glob: $(inputs.in_matrix_out)
- id: out_out
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- clearcut
