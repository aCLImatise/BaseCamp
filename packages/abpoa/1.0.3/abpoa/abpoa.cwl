class: CommandLineTool
id: abpoa.cwl
inputs:
- id: in_aln_mode
  doc: "alignment mode [0]\n0: global, 1: local, 2: extension"
  type: long
  inputBinding:
    prefix: --aln-mode
- id: in_match
  doc: INT       match score [2]
  type: boolean
  inputBinding:
    prefix: --match
- id: in_mismatch
  doc: mismatch penalty [4]
  type: long
  inputBinding:
    prefix: --mismatch
- id: in_gap_open
  doc: (,INT) gap opening penalty (O1,O2) [4,24]
  type: long
  inputBinding:
    prefix: --gap-open
- id: in_gap_ext
  doc: "INT(,INT) gap extension penalty (E1,E2) [2,1]\nabPOA provides three gap penalty\
    \ modes, cost of a g-long gap:\n- convex (default): min{O1+g*E1, O2+g*E2}\n- affine\
    \ (set O2 as 0): O1+g*E1\n- linear (set O1 as 0): g*E1"
  type: boolean
  inputBinding:
    prefix: --gap-ext
- id: in_extra_b
  doc: "INT       first adaptive banding parameter [10]\nset b as < 0 to disable adaptive\
    \ banded DP"
  type: boolean
  inputBinding:
    prefix: --extra-b
- id: in_extra_f
  doc: "FLOAT     second adaptive banding parameter [0.01]\nthe number of extra bases\
    \ added on both sites of the band is\nb+f*L, where L is the length of the aligned\
    \ sequence"
  type: boolean
  inputBinding:
    prefix: --extra-f
- id: in_in_list
  doc: "input file is a list of sequence file names [False]\neach line is one sequence\
    \ file containing a set of sequences\nwhich will be aligned by abPOA to generate\
    \ a consensus sequence"
  type: boolean
  inputBinding:
    prefix: --in-list
- id: in_output
  doc: FILE      ouput to FILE [stdout]
  type: boolean
  inputBinding:
    prefix: --output
- id: in_result
  doc: "INT       output result mode [0]\n- 0: consensus (FASTA format)\n- 1: MSA\
    \ (PIR format)\n- 2: both 0 & 1"
  type: boolean
  inputBinding:
    prefix: --result
- id: in_out_pog
  doc: FILE      dump final alignment graph to FILE (.pdf/.png) [Null]
  type: boolean
  inputBinding:
    prefix: --out-pog
- id: in_cons_alg
  doc: "algorithm to use for consensus calling [0]\n- 0: heaviest bundling\n- 1: heaviest\
    \ in column"
  type: long
  inputBinding:
    prefix: --cons-alg
- id: in_diploid
  doc: input data is diploid [False]
  type: boolean
  inputBinding:
    prefix: --diploid
- id: in_a_slash_cons_alg
  doc: be set as 1 when input is diploid
  type: long
  inputBinding:
    prefix: -a/--cons-alg
- id: in_min_freq
  doc: min frequency of each consensus for diploid input [0.30]
  type: double
  inputBinding:
    prefix: --min-freq
- id: in_in_dot_f_a_slash_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- abpoa
