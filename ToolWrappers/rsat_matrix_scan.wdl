version 1.0

task RsatMatrixscan {
  input {
    String? last_seq
    Boolean? two_str
    Float? return
    String matrix_scan
    String sequences
    String pssm
    String where
    String pseudo_counts
    String papers_dot
    Int eight_one_nine_two_dot
    String distributed_dot
    Float ma_zero_two_two_one_dot_one
    Int m_zero_zero_two_seven_one
    String default_dot
    String tss_dot
    String occ
    String occ_sig_rank
    String efficiency_dot
    String sequence
    String options
    String matrix_dot
  }
  command <<<
    rsat matrix_scan \
      ~{matrix_scan} \
      ~{sequences} \
      ~{pssm} \
      ~{where} \
      ~{pseudo_counts} \
      ~{papers_dot} \
      ~{eight_one_nine_two_dot} \
      ~{distributed_dot} \
      ~{ma_zero_two_two_one_dot_one} \
      ~{m_zero_zero_two_seven_one} \
      ~{default_dot} \
      ~{tss_dot} \
      ~{occ} \
      ~{occ_sig_rank} \
      ~{efficiency_dot} \
      ~{sequence} \
      ~{options} \
      ~{matrix_dot} \
      ~{if defined(last_seq) then ("-last_seq " +  '"' + last_seq + '"') else ""} \
      ~{if (two_str) then "-2str" else ""} \
      ~{if defined(return) then ("-return " +  '"' + return + '"') else ""}
  >>>
  parameter_meta {
    last_seq: "order to select a subset of sequences for quick"
    two_str: "). The maximum size for a CRER is defined by the"
    return: "0.0001 -lth crer_size 20 -uth crer_size 200"
    matrix_scan: "[1mDESCRIPTION[0m"
    sequences: "pattern matching"
    pssm: "[1mUSAGE[0m"
    where: "[33mproba_M = P(S|M)[0m:"
    pseudo_counts: "Relative frequencies can be corrected by a pseudo-count (b) to reduce\\nthe bias due to the small number of observations.\\nThe pseudo-count can be shared either in an equiprobable way,\\nS<F''ij=(Nij + b/A)/[SUMi(Nij)+b]>\\nor according to residue prior frequencies.\\nS<F''ij=(Nij + b*Pi)/[SUMi(Nij)+b]>\\nwhere\\nPi  is the prior frequency for residue i\\nA   is the size of the alphabet (A=4 for DNA).\\nb   is the pseudo-count, which is \\\"shared\\\" between residues according to\\ntheir prior frequencies."
    papers_dot: "Aerts, S., Thijs, G., Coessens, B., Staes, M., Moreau, Y. & De Moor, B."
    eight_one_nine_two_dot: "Hertz, G.Z. and G.D. Stormo (1999)."
    distributed_dot: "[1m-m matrixfile[0m"
    ma_zero_two_two_one_dot_one: "[1m-matrix_name matrix_name1[,matrix_name2,...][0m"
    m_zero_zero_two_seven_one: "[1m-first_seq N[0m"
    default_dot: "[1m-bg_pseudo #[0m"
    tss_dot: "Note: in previous versions, -origin was used to specify both"
    occ: "occ_sum inv_cum exp_occ occ_pval occ_eval occ_sig"
    occ_sig_rank: "In -window mode, if a threshold is set on pval (e.g. -uth"
    efficiency_dot: "[1mlimits:[0m limits (start, end) of the input sequences."
    sequence: "For each matrix and each score value, calculate the\\nstatistical significance of the number of matches. This\\nallows to select the score associated with te maximal\\nsignificance, on the basis of the matrix-specific\\ndistribution, rather than by selecting some a priori\\nthreshold.\\nFor each motif (M) and each score value (s), the program\\nestimates the significance of the observed number of\\nmatches (x), given the prior probability (p) to find an\\ninstance of this motif with at least this score at a\\ngiven position of the sequence. The P-value is\\ncalculated using the binomial distribution (Aerts et\\nal., 2003).\\nThis option requires to specify a background score\\ndistribution (option -bg_distrib) to estimate the prior\\nprobabilities of motif instances."
    options: "matrix-scan -v 1 -return distrib -m matrix.tab -i\\nbg_sequences.fta [...]"
    matrix_dot: "[1mcheck_thresholds[0m"
  }
  output {
    File out_stdout = stdout()
  }
}