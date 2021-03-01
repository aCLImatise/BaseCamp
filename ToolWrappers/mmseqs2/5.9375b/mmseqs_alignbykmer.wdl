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
    File? sub_mat
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs alignbykmer \
      ~{if (kmer_size_range) then "-k" else ""} \
      ~{if (alph_size) then "--alph-size" else ""} \
      ~{if (add_self_matches) then "--add-self-matches" else ""} \
      ~{if (list_matches_fraction) then "-c" else ""} \
      ~{if (list_matches_evalue) then "-e" else ""} \
      ~{if (cov_mode) then "--cov-mode" else ""} \
      ~{if (min_seq_id) then "--min-seq-id" else ""} \
      ~{if (sub_mat) then "--sub-mat" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    kmer_size_range: "4               k-mer size in the range [6,7] (0: set automatically to optimum)"
    alph_size: "21              alphabet size [2,21]"
    add_self_matches: "false           artificially add entries of queries with themselves (for clustering)"
    list_matches_fraction: "0.000           list matches above this fraction of aligned (covered) residues (see --cov-mode)"
    list_matches_evalue: "0.001           list matches below this E-value [0.0, inf]"
    cov_mode: "0               0: coverage of query and target, 1: coverage of target, 2: coverage of query 3: target seq. length needs be at least x% of query length"
    min_seq_id: "0.000           list matches above this sequence identity (for clustering) [0.0,1.0]"
    sub_mat: "blosum62.out    amino acid substitution matrix file"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
    File out_sub_mat = "${in_sub_mat}"
  }
}