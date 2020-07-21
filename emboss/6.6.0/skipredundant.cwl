class: CommandLineTool
id: ../../../skipredundant.cwl
inputs:
- id: mode
  doc: 'menu       [1] This option specifies whether to remove redundancy at a single
    threshold percentage sequence similarity or remove redundancy outside a range
    of acceptable threshold percentage similarity. All permutations of pair-wise sequence
    alignments are calculated for each set of input sequences in turn using the EMBOSS
    implementation of the Needleman and Wunsch global alignment algorithm. Redundant
    sequences are removed in one of two modes as follows: (i) If a pair of proteins
    achieve greater than a threshold percentage sequence similarity (specified by
    the user) the shortest sequence is discarded. (ii) If a pair of proteins have
    a percentage sequence similarity that lies outside an acceptable range (specified
    by the user) the shortest sequence is discarded. (Values: 1 (Single threshold
    percentage sequence similarity); 2 (Outside a range of acceptable threshold percentage
    similarities))'
  type: boolean
  inputBinding:
    prefix: -mode
- id: gap_open
  doc: float      [10.0 for any sequence] The gap open penalty is the score taken
    away when a gap is created. The best value depends on the choice of comparison
    matrix. The default value assumes you are using the EBLOSUM62 matrix for protein
    sequences, and the EDNAFULL matrix for nucleotide sequences. (Floating point number
    from 1.0 to 100.0)
  type: boolean
  inputBinding:
    prefix: -gapopen
- id: gap_extend
  doc: float      [0.5 for any sequence] The gap extension, penalty is added to the
    standard gap penalty for each base or residue in the gap. This is how long gaps
    are penalized. Usually you will expect a few long gaps rather than many short
    gaps, so the gap extension penalty should be lower than the gap penalty. An exception
    is where one or both sequences are single reads with possible sequencing errors
    in which case you would expect many single base gaps. You can get this result
    by setting the gap open penalty to zero (or very low) and using the gap extension
    penalty to control gap scoring. (Floating point number from 0.0 to 10.0)
  type: boolean
  inputBinding:
    prefix: -gapextend
outputs: []
cwlVersion: v1.1
baseCommand:
- skipredundant
