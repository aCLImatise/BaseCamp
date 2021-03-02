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
    File? sub_mat
    Boolean? max_seq_len
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs kmermatcher \
      ~{if (alph_size) then "--alph-size" else ""} \
      ~{if (mask) then "--mask" else ""} \
      ~{if (kmer_size_range) then "-k" else ""} \
      ~{if (split_memory_limit) then "--split-memory-limit" else ""} \
      ~{if (min_seq_id) then "--min-seq-id" else ""} \
      ~{if (cov_mode) then "--cov-mode" else ""} \
      ~{if (list_matches_fraction) then "-c" else ""} \
      ~{if (km_er_per_seq) then "--kmer-per-seq" else ""} \
      ~{if (hash_shift) then "--hash-shift" else ""} \
      ~{if (include_only_extendable) then "--include-only-extendable" else ""} \
      ~{if (skip_n_repeat_km_er) then "--skip-n-repeat-kmer" else ""} \
      ~{if (sub_mat) then "--sub-mat" else ""} \
      ~{if (max_seq_len) then "--max-seq-len" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alph_size: "13              alphabet size [2,21]"
    mask: "0               0: w/o low complexity masking, 1: with low complexity masking"
    kmer_size_range: "0               k-mer size in the range [6,7] (0: set automatically to optimum)"
    split_memory_limit: "0               Maximum system memory in megabyte that one split may use. Defaults (0) to all available system memory."
    min_seq_id: "0.000           list matches above this sequence identity (for clustering) [0.0,1.0]"
    cov_mode: "0               0: coverage of query and target, 1: coverage of target, 2: coverage of query 3: target seq. length needs be at least x% of query length"
    list_matches_fraction: "0.800           list matches above this fraction of aligned (covered) residues (see --cov-mode)"
    km_er_per_seq: "0               kmer per sequence"
    hash_shift: "5               Shift k-mer hash"
    include_only_extendable: "false           Include only extendable"
    skip_n_repeat_km_er: "0               Skip sequence with >= n exact repeating k-mers"
    sub_mat: "blosum62.out    amino acid substitution matrix file"
    max_seq_len: "65535           Maximum sequence length [1,32768]"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
    File out_sub_mat = "${in_sub_mat}"
  }
}