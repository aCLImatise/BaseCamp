class: CommandLineTool
id: hhmake.cwl
inputs:
- id: i
  doc: 'query alignment (A2M, A3M, or FASTA), or query HMM         '
  type: File
  inputBinding:
    prefix: -i
- id: o
  doc: 'HMM file to be written to  (default=<infile.hhm>)          '
  type: File
  inputBinding:
    prefix: -o
- id: a
  doc: 'HMM file to be appended to                                 '
  type: File
  inputBinding:
    prefix: -a
- id: v
  doc: 'verbose mode: 0:no screen output  1:only warings  2: verbose'
  type: long
  inputBinding:
    prefix: -v
- id: seq
  doc: max. number of query/template sequences displayed (def=10)   Beware of overflows!
    All these sequences are stored in memory.
  type: long
  inputBinding:
    prefix: -seq
- id: add_cons
  doc: 'make consensus sequence master sequence of query MSA '
  type: boolean
  inputBinding:
    prefix: -add_cons
- id: name
  doc: 'use this name for HMM (default: use name of first sequence)   '
  type: string
  inputBinding:
    prefix: -name
- id: id
  doc: '[0,100]  maximum pairwise sequence identity (%) (def=90)   '
  type: boolean
  inputBinding:
    prefix: -id
- id: diff
  doc: '[0,inf[  filter MSA by selecting most diverse set of sequences, keeping  at
    least this many seqs in each MSA block of length 50 (def=100) '
  type: boolean
  inputBinding:
    prefix: -diff
- id: cov
  doc: '[0,100]  minimum coverage with query (%) (def=0) '
  type: boolean
  inputBinding:
    prefix: -cov
- id: qid
  doc: '[0,100]  minimum sequence identity with query (%) (def=0) '
  type: boolean
  inputBinding:
    prefix: -qid
- id: qsc
  doc: '[0,100]  minimum score per column with query  (def=-20.0)'
  type: boolean
  inputBinding:
    prefix: -qsc
- id: neff
  doc: '[1,inf]  target diversity of alignment (default=off)'
  type: boolean
  inputBinding:
    prefix: -neff
- id: m
  doc: "use A2M/A3M (default): upper case = Match; lower case = Insert; '-' = Delete;\
    \ '.' = gaps aligned to inserts (may be omitted)   "
  type: string
  inputBinding:
    prefix: -M
- id: m
  doc: 'use FASTA: columns with residue in 1st sequence are match states'
  type: string
  inputBinding:
    prefix: -M
- id: m
  doc: '[0,100]    use FASTA: columns with fewer than X% gaps are match states   '
  type: boolean
  inputBinding:
    prefix: -M
- id: pc_hhm_con_txt_a
  doc: '[0,1]        overall pseudocount admixture (def=0.9)                        '
  type: boolean
  inputBinding:
    prefix: -pc_hhm_contxt_a
- id: pc_hhm_con_txt_b
  doc: '[1,inf[      Neff threshold value for mode 2 (def=4.0)                      '
  type: boolean
  inputBinding:
    prefix: -pc_hhm_contxt_b
- id: pc_hhm_con_txt_c
  doc: '[0,3]        extinction exponent c for mode 2 (def=1.0)                     '
  type: boolean
  inputBinding:
    prefix: -pc_hhm_contxt_c
- id: pc_hhm_no_con_txt_a
  doc: '[0,1]        overall pseudocount admixture (def=1.0)                        '
  type: boolean
  inputBinding:
    prefix: -pc_hhm_nocontxt_a
- id: pc_hhm_no_con_txt_b
  doc: '[1,inf[      Neff threshold value for mode 2 (def=1.5)                      '
  type: boolean
  inputBinding:
    prefix: -pc_hhm_nocontxt_b
- id: pc_hhm_no_con_txt_c
  doc: '[0,3]        extinction exponent c for mode 2 (def=1.0)                     '
  type: boolean
  inputBinding:
    prefix: -pc_hhm_nocontxt_c
- id: no_con_txt
  doc: 'use substitution-matrix instead of context-specific pseudocounts '
  type: boolean
  inputBinding:
    prefix: -nocontxt
- id: con_txt
  doc: context file for computing context-specific pseudocounts (default=)
  type: File
  inputBinding:
    prefix: -contxt
- id: max_seq
  doc: max number of input rows (def=65535)
  type: long
  inputBinding:
    prefix: -maxseq
- id: max_res
  doc: max number of HMM columns (def=20001)
  type: long
  inputBinding:
    prefix: -maxres
outputs: []
cwlVersion: v1.1
baseCommand:
- hhmake
