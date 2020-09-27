class: CommandLineTool
id: rsat_matrix_scan.cwl
inputs:
- id: in_last_seq
  doc: order to select a subset of sequences for quick
  type: string
  inputBinding:
    prefix: -last_seq
- id: in_two_str
  doc: ). The maximum size for a CRER is defined by the
  type: boolean
  inputBinding:
    prefix: -2str
- id: in_return
  doc: 0.0001 -lth crer_size 20 -uth crer_size 200
  type: double
  inputBinding:
    prefix: -return
- id: in_matrix_scan
  doc: "\e[1mDESCRIPTION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_sequences
  doc: pattern matching
  type: string
  inputBinding:
    position: 0
- id: in_pssm
  doc: "\e[1mUSAGE\e[0m"
  type: string
  inputBinding:
    position: 1
- id: in_where
  doc: "\e[33mproba_M = P(S|M)\e[0m:"
  type: string
  inputBinding:
    position: 0
- id: in_pseudo_counts
  doc: "Relative frequencies can be corrected by a pseudo-count (b) to reduce\nthe\
    \ bias due to the small number of observations.\nThe pseudo-count can be shared\
    \ either in an equiprobable way,\nS<F''ij=(Nij + b/A)/[SUMi(Nij)+b]>\nor according\
    \ to residue prior frequencies.\nS<F''ij=(Nij + b*Pi)/[SUMi(Nij)+b]>\nwhere\n\
    Pi  is the prior frequency for residue i\nA   is the size of the alphabet (A=4\
    \ for DNA).\nb   is the pseudo-count, which is \"shared\" between residues according\
    \ to\ntheir prior frequencies."
  type: string
  inputBinding:
    position: 0
- id: in_papers_dot
  doc: Aerts, S., Thijs, G., Coessens, B., Staes, M., Moreau, Y. & De Moor, B.
  type: string
  inputBinding:
    position: 0
- id: in_eight_one_nine_two_dot
  doc: Hertz, G.Z. and G.D. Stormo (1999).
  type: long
  inputBinding:
    position: 0
- id: in_distributed_dot
  doc: "\e[1m-m matrixfile\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_ma_zero_two_two_one_dot_one
  doc: "\e[1m-matrix_name matrix_name1[,matrix_name2,...]\e[0m"
  type: double
  inputBinding:
    position: 0
- id: in_m_zero_zero_two_seven_one
  doc: "\e[1m-first_seq N\e[0m"
  type: long
  inputBinding:
    position: 0
- id: in_default_dot
  doc: "\e[1m-bg_pseudo #\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_tss_dot
  doc: 'Note: in previous versions, -origin was used to specify both'
  type: string
  inputBinding:
    position: 0
- id: in_occ
  doc: occ_sum inv_cum exp_occ occ_pval occ_eval occ_sig
  type: string
  inputBinding:
    position: 0
- id: in_occ_sig_rank
  doc: In -window mode, if a threshold is set on pval (e.g. -uth
  type: string
  inputBinding:
    position: 1
- id: in_efficiency_dot
  doc: "\e[1mlimits:\e[0m limits (start, end) of the input sequences."
  type: string
  inputBinding:
    position: 0
- id: in_sequence
  doc: "For each matrix and each score value, calculate the\nstatistical significance\
    \ of the number of matches. This\nallows to select the score associated with te\
    \ maximal\nsignificance, on the basis of the matrix-specific\ndistribution, rather\
    \ than by selecting some a priori\nthreshold.\nFor each motif (M) and each score\
    \ value (s), the program\nestimates the significance of the observed number of\n\
    matches (x), given the prior probability (p) to find an\ninstance of this motif\
    \ with at least this score at a\ngiven position of the sequence. The P-value is\n\
    calculated using the binomial distribution (Aerts et\nal., 2003).\nThis option\
    \ requires to specify a background score\ndistribution (option -bg_distrib) to\
    \ estimate the prior\nprobabilities of motif instances."
  type: string
  inputBinding:
    position: 0
- id: in_options
  doc: "matrix-scan -v 1 -return distrib -m matrix.tab -i\nbg_sequences.fta [...]"
  type: string
  inputBinding:
    position: 0
- id: in_matrix_dot
  doc: "\e[1mcheck_thresholds\e[0m"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsat
- matrix-scan
