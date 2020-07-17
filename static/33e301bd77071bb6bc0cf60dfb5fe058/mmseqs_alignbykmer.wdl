version 1.0

task MmseqsAlignbykmer {
  input {
    Boolean? kmer_size_range
    Boolean? alph_size
    Boolean? add_self_matches
    Boolean? list_matches_fraction
    Boolean? list_matches_evalue
    Boolean? cov_mode
    Boolean? min_seq_id
    Boolean? sub_mat
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs alignbykmer \
      ~{true="-k" false="" kmer_size_range} \
      ~{true="--alph-size" false="" alph_size} \
      ~{true="--add-self-matches" false="" add_self_matches} \
      ~{true="-c" false="" list_matches_fraction} \
      ~{true="-e" false="" list_matches_evalue} \
      ~{true="--cov-mode" false="" cov_mode} \
      ~{true="--min-seq-id" false="" min_seq_id} \
      ~{true="--sub-mat" false="" sub_mat} \
      ~{true="--threads" false="" threads} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    kmer_size_range: "4               k-mer size in the range [6,7] (0: set automatically to optimum)"
    alph_size: "21              alphabet size [2,21]                                        "
    add_self_matches: "false           artificially add entries of queries with themselves (for clustering)"
    list_matches_fraction: "0.000           list matches above this fraction of aligned (covered) residues (see --cov-mode)"
    list_matches_evalue: "0.001           list matches below this E-value [0.0, inf]                  "
    cov_mode: "0               0: coverage of query and target, 1: coverage of target, 2: coverage of query 3: target seq. length needs be at least x% of query length"
    min_seq_id: "0.000           list matches above this sequence identity (for clustering) [0.0,1.0]"
    sub_mat: "blosum62.out    amino acid substitution matrix file                         "
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}