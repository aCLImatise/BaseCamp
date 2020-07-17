version 1.0

task MmseqsKmermatcher {
  input {
    Boolean? alph_size
    Boolean? mask
    Boolean? kmer_size_range
    Boolean? split_memory_limit
    Boolean? min_seq_id
    Boolean? cov_mode
    Boolean? list_matches_fraction
    Boolean? km_er_per_seq
    Boolean? hash_shift
    Boolean? include_only_extendable
    Boolean? skip_n_repeat_km_er
    Boolean? sub_mat
    Boolean? max_seq_len
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs kmermatcher \
      ~{true="--alph-size" false="" alph_size} \
      ~{true="--mask" false="" mask} \
      ~{true="-k" false="" kmer_size_range} \
      ~{true="--split-memory-limit" false="" split_memory_limit} \
      ~{true="--min-seq-id" false="" min_seq_id} \
      ~{true="--cov-mode" false="" cov_mode} \
      ~{true="-c" false="" list_matches_fraction} \
      ~{true="--kmer-per-seq" false="" km_er_per_seq} \
      ~{true="--hash-shift" false="" hash_shift} \
      ~{true="--include-only-extendable" false="" include_only_extendable} \
      ~{true="--skip-n-repeat-kmer" false="" skip_n_repeat_km_er} \
      ~{true="--sub-mat" false="" sub_mat} \
      ~{true="--max-seq-len" false="" max_seq_len} \
      ~{true="--threads" false="" threads} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    alph_size: "13              alphabet size [2,21]                                        "
    mask: "0               0: w/o low complexity masking, 1: with low complexity masking"
    kmer_size_range: "0               k-mer size in the range [6,7] (0: set automatically to optimum)"
    split_memory_limit: "0               Maximum system memory in megabyte that one split may use. Defaults (0) to all available system memory."
    min_seq_id: "0.000           list matches above this sequence identity (for clustering) [0.0,1.0]"
    cov_mode: "0               0: coverage of query and target, 1: coverage of target, 2: coverage of query 3: target seq. length needs be at least x% of query length"
    list_matches_fraction: "0.800           list matches above this fraction of aligned (covered) residues (see --cov-mode)"
    km_er_per_seq: "0               kmer per sequence                                           "
    hash_shift: "5               Shift k-mer hash                                            "
    include_only_extendable: "false           Include only extendable                                     "
    skip_n_repeat_km_er: "0               Skip sequence with >= n exact repeating k-mers              "
    sub_mat: "blosum62.out    amino acid substitution matrix file                         "
    max_seq_len: "65535           Maximum sequence length [1,32768]                           "
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}