class: CommandLineTool
id: abpoa.cwl
inputs:
- id: aln_mode
  doc: 'alignment mode [0] 0: global, 1: local, 2: extension'
  type: long
  inputBinding:
    prefix: --aln-mode
- id: match
  doc: INT       match score [2]
  type: boolean
  inputBinding:
    prefix: --match
- id: mismatch
  doc: mismatch penalty [4]
  type: long
  inputBinding:
    prefix: --mismatch
- id: gap_open
  doc: (,INT) gap opening penalty (O1,O2) [4,24]
  type: long
  inputBinding:
    prefix: --gap-open
- id: gap_ext
  doc: 'INT(,INT) gap extension penalty (E1,E2) [2,1] abpoa provides 3 gap penalty
    modes, penalty of a g-long gap: - convex (default): min{O1+g*E1, O2+g*E2} - affine
    (set O2 as 0): O1+g*E1 - linear (set O1 as 0): g*E1'
  type: boolean
  inputBinding:
    prefix: --gap-ext
- id: extra_b
  doc: INT       first part of extra band [10] set b as < 0 to disable adaptive banded
    DP
  type: boolean
  inputBinding:
    prefix: --extra-b
- id: extra_f
  doc: 'FLOAT     second part of extra band: f * L, L is the length of input sequence
    [0.01] width of extra bind is b + f * L'
  type: boolean
  inputBinding:
    prefix: --extra-f
- id: in_list
  doc: input file is a list of sequence file [False] each line is one sequence file
  type: boolean
  inputBinding:
    prefix: --in-list
- id: output
  doc: FILE      ouput to FILE [stdout]
  type: boolean
  inputBinding:
    prefix: --output
- id: result
  doc: 'INT       output result mode [0] - 0: consensus (FASTA format) - 1: MSA (PIR
    format) - 2: both 0 & 1'
  type: boolean
  inputBinding:
    prefix: --result
- id: out_pog
  doc: FILE      dump partial order graph to FILE (.pdf/.png) [Null]
  type: boolean
  inputBinding:
    prefix: --out-pog
- id: cons_alg
  doc: 'algorithm for consensus calling [0] - 0: heaviest bundling - 1: heaviest in
    column'
  type: long
  inputBinding:
    prefix: --cons-alg
- id: diploid
  doc: input is diploid [False] -a/--cons-alg is forced to be 1 when input is diploid
  type: boolean
  inputBinding:
    prefix: --diploid
- id: min_freq
  doc: min frequency of each consensus for diploid input [0.30]
  type: double
  inputBinding:
    prefix: --min-freq
outputs: []
cwlVersion: v1.1
baseCommand:
- abpoa
