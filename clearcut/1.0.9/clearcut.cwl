class: CommandLineTool
id: clearcut.cwl
inputs:
- id: verbose
  doc: 'More output. (Default: OFF)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: 'Silent operation. (Default: ON)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: seed
  doc: Explicitly set the PRNG seed to a specific value.
  type: string
  inputBinding:
    prefix: --seed
- id: no_random
  doc: 'Attempt joins deterministically.  (Default: OFF)'
  type: boolean
  inputBinding:
    prefix: --norandom
- id: shuffle
  doc: 'Randomly shuffle the distance matrix.  (Default: OFF)'
  type: boolean
  inputBinding:
    prefix: --shuffle
- id: neighbor
  doc: 'Use traditional Neighbor-Joining algorithm. (Default: OFF)'
  type: boolean
  inputBinding:
    prefix: --neighbor
- id: stdin
  doc: Read input from STDIN.
  type: boolean
  inputBinding:
    prefix: --stdin
- id: distance
  doc: 'Input file is a distance matrix. (Default: ON)'
  type: boolean
  inputBinding:
    prefix: --distance
- id: alignment
  doc: 'Input file is a set of aligned sequences. (Default: OFF)'
  type: boolean
  inputBinding:
    prefix: --alignment
- id: dna
  doc: Input alignment are DNA sequences.
  type: boolean
  inputBinding:
    prefix: --DNA
- id: protein
  doc: Input alignment are protein sequences.
  type: boolean
  inputBinding:
    prefix: --protein
- id: jukes
  doc: Use Jukes-Cantor correction for computing distance matrix.
  type: boolean
  inputBinding:
    prefix: --jukes
- id: kimura
  doc: Use Kimura correction for distance matrix.
  type: boolean
  inputBinding:
    prefix: --kimura
- id: stdout
  doc: Output tree to STDOUT.
  type: boolean
  inputBinding:
    prefix: --stdout
- id: matrix_out
  doc: Output distance matrix to specified file.
  type: File
  inputBinding:
    prefix: --matrixout
- id: n_trees
  doc: 'Output n trees.  (Default: 1)'
  type: string
  inputBinding:
    prefix: --ntrees
- id: exp_blen
  doc: 'Exponential notation for branch lengths. (Default: OFF)'
  type: boolean
  inputBinding:
    prefix: --expblen
- id: exp_dist
  doc: 'Exponential notation in distance output. (Default: OFF)'
  type: boolean
  inputBinding:
    prefix: --expdist
outputs: []
cwlVersion: v1.1
baseCommand:
- clearcut
