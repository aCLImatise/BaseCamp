version 1.0

task MmseqsRescorediagonal {
  input {
    Boolean? add_self_matches
    Boolean? list_matches_evalue
    Boolean? list_matches_fraction
    Boolean? cov_mode
    Boolean? min_seq_id
    Boolean? seq_id_mode
    Boolean? re_score_mode
    Boolean? no_preload
    Boolean? sub_mat
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs rescorediagonal \
      ~{true="--add-self-matches" false="" add_self_matches} \
      ~{true="-e" false="" list_matches_evalue} \
      ~{true="-c" false="" list_matches_fraction} \
      ~{true="--cov-mode" false="" cov_mode} \
      ~{true="--min-seq-id" false="" min_seq_id} \
      ~{true="--seq-id-mode" false="" seq_id_mode} \
      ~{true="--rescore-mode" false="" re_score_mode} \
      ~{true="--no-preload" false="" no_preload} \
      ~{true="--sub-mat" false="" sub_mat} \
      ~{true="--threads" false="" threads} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    add_self_matches: "false           artificially add entries of queries with themselves (for clustering)"
    list_matches_evalue: "0.001           list matches below this E-value [0.0, inf]                  "
    list_matches_fraction: "0.000           list matches above this fraction of aligned (covered) residues (see --cov-mode)"
    cov_mode: "0               0: coverage of query and target, 1: coverage of target, 2: coverage of query 3: target seq. length needs be at least x% of query length"
    min_seq_id: "0.000           list matches above this sequence identity (for clustering) [0.0,1.0]"
    seq_id_mode: "0               0: alignment length 1: shorter, 2: longer sequence          "
    re_score_mode: "0               Rescore diagonal with: 0: Hamming distance, 1: local alignment (score only) or 2: local alignment"
    no_preload: "false           Do not preload database                                     "
    sub_mat: "blosum62.out    amino acid substitution matrix file                         "
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}