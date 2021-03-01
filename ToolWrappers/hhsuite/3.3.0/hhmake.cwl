class: CommandLineTool
id: hhmake.cwl
inputs:
- id: in_query_alignment_am
  doc: query alignment (A2M, A3M, or FASTA), or query HMM
  type: File?
  inputBinding:
    prefix: -i
- id: in_hmm_file_written
  doc: HMM file to be written to  (default=<infile.hhm>)
  type: File?
  inputBinding:
    prefix: -o
- id: in_hmm_file_appended
  doc: HMM file to be appended to
  type: File?
  inputBinding:
    prefix: -a
- id: in_verbose_mode_screen
  doc: 'verbose mode: 0:no screen output  1:only warings  2: verbose'
  type: long?
  inputBinding:
    prefix: -v
- id: in_seq
  doc: "max. number of query/template sequences displayed (def=10)\nBeware of overflows!\
    \ All these sequences are stored in memory."
  type: long?
  inputBinding:
    prefix: -seq
- id: in_add_cons
  doc: make consensus sequence master sequence of query MSA
  type: boolean?
  inputBinding:
    prefix: -add_cons
- id: in_name
  doc: 'use this name for HMM (default: use name of first sequence)'
  type: string?
  inputBinding:
    prefix: -name
- id: in_id
  doc: '[0,100]  maximum pairwise sequence identity (%) (def=90)'
  type: boolean?
  inputBinding:
    prefix: -id
- id: in_diff
  doc: "[0,inf[  filter MSA by selecting most diverse set of sequences, keeping\n\
    at least this many seqs in each MSA block of length 50 (def=100)"
  type: boolean?
  inputBinding:
    prefix: -diff
- id: in_cov
  doc: '[0,100]  minimum coverage with query (%) (def=0)'
  type: boolean?
  inputBinding:
    prefix: -cov
- id: in_qid
  doc: '[0,100]  minimum sequence identity with query (%) (def=0)'
  type: boolean?
  inputBinding:
    prefix: -qid
- id: in_qsc
  doc: '[0,100]  minimum score per column with query  (def=-20.0)'
  type: boolean?
  inputBinding:
    prefix: -qsc
- id: in_neff
  doc: '[1,inf]  target diversity of alignment (default=off)'
  type: boolean?
  inputBinding:
    prefix: -neff
- id: in_pc_hhm_con_txt_mode
  doc: "{0,..,3}   position dependence of pc admixture 'tau' (pc mode, default=0)\n\
    0: no pseudo counts:    tau = 0\n1: constant             tau = a\n2: diversity-dependent:\
    \ tau = a/(1+((Neff[i]-1)/b)^c)\n3: CSBlast admixture:   tau = a(1+b)/(Neff[i]+b)\n\
    (Neff[i]: number of effective seqs in local MSA around column i)"
  type: boolean?
  inputBinding:
    prefix: -pc_hhm_contxt_mode
- id: in_pc_hhm_con_txt_a
  doc: '[0,1]        overall pseudocount admixture (def=0.9)'
  type: boolean?
  inputBinding:
    prefix: -pc_hhm_contxt_a
- id: in_pc_hhm_con_txt_b
  doc: '[1,inf[      Neff threshold value for mode 2 (def=4.0)'
  type: boolean?
  inputBinding:
    prefix: -pc_hhm_contxt_b
- id: in_pc_hhm_con_txt_c
  doc: '[0,3]        extinction exponent c for mode 2 (def=1.0)'
  type: boolean?
  inputBinding:
    prefix: -pc_hhm_contxt_c
- id: in_pc_hhm_no_con_txt_mode
  doc: "{0,..,3}   position dependence of pc admixture 'tau' (pc mode, default=2)\n\
    0: no pseudo counts:    tau = 0\n1: constant             tau = a\n2: diversity-dependent:\
    \ tau = a/(1+((Neff[i]-1)/b)^c)\n(Neff[i]: number of effective seqs in local MSA\
    \ around column i)"
  type: boolean?
  inputBinding:
    prefix: -pc_hhm_nocontxt_mode
- id: in_pc_hhm_no_con_txt_a
  doc: '[0,1]        overall pseudocount admixture (def=1.0)'
  type: boolean?
  inputBinding:
    prefix: -pc_hhm_nocontxt_a
- id: in_pc_hhm_no_con_txt_b
  doc: '[1,inf[      Neff threshold value for mode 2 (def=1.5)'
  type: boolean?
  inputBinding:
    prefix: -pc_hhm_nocontxt_b
- id: in_pc_hhm_no_con_txt_c
  doc: '[0,3]        extinction exponent c for mode 2 (def=1.0)'
  type: boolean?
  inputBinding:
    prefix: -pc_hhm_nocontxt_c
- id: in_no_con_txt
  doc: use substitution-matrix instead of context-specific pseudocounts
  type: boolean?
  inputBinding:
    prefix: -nocontxt
- id: in_con_txt
  doc: context file for computing context-specific pseudocounts (default=)
  type: File?
  inputBinding:
    prefix: -contxt
- id: in_max_seq
  doc: max number of input rows (def=65535)
  type: long?
  inputBinding:
    prefix: -maxseq
- id: in_max_res
  doc: max number of HMM columns (def=20001)
  type: long?
  inputBinding:
    prefix: -maxres
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hhsuite:3.3.0--py38pl526h6ed170a_0
cwlVersion: v1.1
baseCommand:
- hhmake
