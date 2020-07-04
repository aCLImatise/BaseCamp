class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/abpoa.cwl
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
  doc: 'INT(,INT) gap extension penalty (E1,E2) [2,1] abPOA provides three gap penalty
    modes, cost of a g-long gap: - convex (default): min{O1+g*E1, O2+g*E2} - affine
    (set O2 as 0): O1+g*E1 - linear (set O1 as 0): g*E1'
  type: boolean
  inputBinding:
    prefix: --gap-ext
- id: extra_b
  doc: INT       first adaptive banding parameter [10] set b as < 0 to disable adaptive
    banded DP
  type: boolean
  inputBinding:
    prefix: --extra-b
- id: extra_f
  doc: FLOAT     second adaptive banding parameter [0.01] the number of extra bases
    added on both sites of the band is b+f*L, where L is the length of the aligned
    sequence
  type: boolean
  inputBinding:
    prefix: --extra-f
- id: in_list
  doc: input file is a list of sequence file names [False] each line is one sequence
    file containing a set of sequences which will be aligned by abPOA to generate
    a consensus sequence
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
  doc: FILE      dump final alignment graph to FILE (.pdf/.png) [Null]
  type: boolean
  inputBinding:
    prefix: --out-pog
- id: cons_alg
  doc: 'algorithm to use for consensus calling [0] - 0: heaviest bundling - 1: heaviest
    in column'
  type: long
  inputBinding:
    prefix: --cons-alg
- id: diploid
  doc: input data is diploid [False] -a/--cons-alg will be set as 1 when input is
    diploid and at most two consensus sequences will be generated
  type: boolean
  inputBinding:
    prefix: --diploid
- id: min_freq
  doc: min frequency of each consensus for diploid input [0.30]
  type: double
  inputBinding:
    prefix: --min-freq
- id: in_dot_f_a_slash_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- abpoa
