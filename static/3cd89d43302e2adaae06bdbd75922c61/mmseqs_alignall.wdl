version 1.0

task MmseqsAlignall {
  input {
    Boolean? comp_bias_corr
    Boolean? add_self_matches
    Boolean? false_add_convert
    Boolean? alignment_mode
    Boolean? list_matches_evalue
    Boolean? min_seq_id
    Boolean? seq_id_mode
    Boolean? alt_ali
    Boolean? list_matches_fraction
    Boolean? cov_mode
    Boolean? realign
    Boolean? max_rejected
    Boolean? max_accept
    Boolean? score_bias
    Boolean? pc_a
    Boolean? pcb
    Boolean? no_preload
    Boolean? sub_mat
    Boolean? max_seq_len
    Boolean? max_seqs
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs alignall \
      ~{true="--comp-bias-corr" false="" comp_bias_corr} \
      ~{true="--add-self-matches" false="" add_self_matches} \
      ~{true="-a" false="" false_add_convert} \
      ~{true="--alignment-mode" false="" alignment_mode} \
      ~{true="-e" false="" list_matches_evalue} \
      ~{true="--min-seq-id" false="" min_seq_id} \
      ~{true="--seq-id-mode" false="" seq_id_mode} \
      ~{true="--alt-ali" false="" alt_ali} \
      ~{true="-c" false="" list_matches_fraction} \
      ~{true="--cov-mode" false="" cov_mode} \
      ~{true="--realign" false="" realign} \
      ~{true="--max-rejected" false="" max_rejected} \
      ~{true="--max-accept" false="" max_accept} \
      ~{true="--score-bias" false="" score_bias} \
      ~{true="--pca" false="" pc_a} \
      ~{true="--pcb" false="" pcb} \
      ~{true="--no-preload" false="" no_preload} \
      ~{true="--sub-mat" false="" sub_mat} \
      ~{true="--max-seq-len" false="" max_seq_len} \
      ~{true="--max-seqs" false="" max_seqs} \
      ~{true="--threads" false="" threads} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    comp_bias_corr: "1               correct for locally biased amino acid composition [0,1]     "
    add_self_matches: "false           artificially add entries of queries with themselves (for clustering)"
    false_add_convert: "false           add backtrace string (convert to alignments with mmseqs convertalis utility)"
    alignment_mode: "0               How to compute the alignment: 0: automatic; 1: only score and end_pos; 2: also start_pos and cov; 3: also seq.id; 4: only ungapped alignment"
    list_matches_evalue: "0.001           list matches below this E-value [0.0, inf]                  "
    min_seq_id: "0.000           list matches above this sequence identity (for clustering) [0.0,1.0]"
    seq_id_mode: "0               0: alignment length 1: shorter, 2: longer sequence          "
    alt_ali: "0               Show up to this many alternative alignments                 "
    list_matches_fraction: "0.000           list matches above this fraction of aligned (covered) residues (see --cov-mode)"
    cov_mode: "0               0: coverage of query and target, 1: coverage of target, 2: coverage of query 3: target seq. length needs be at least x% of query length"
    realign: "false           compute more conservative, shorter alignments (scores and E-values not changed)"
    max_rejected: "2147483647      maximum rejected alignments before alignment calculation for a query is aborted"
    max_accept: "2147483647      maximum accepted alignments before alignment calculation for a query is stopped"
    score_bias: "0.000           Score bias when computing the SW alignment (in bits)        "
    pc_a: "1.000           pseudo count admixture strength                             "
    pcb: "1.500           pseudo counts: Neff at half of maximum admixture (0.0,infinity)"
    no_preload: "false           Do not preload database                                     "
    sub_mat: "blosum62.out    amino acid substitution matrix file                         "
    max_seq_len: "65535           Maximum sequence length [1,32768]                           "
    max_seqs: "300             maximum result sequences per query (this parameter affects the sensitivity)"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}