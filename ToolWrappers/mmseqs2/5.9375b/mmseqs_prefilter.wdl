version 1.0

task MmseqsPrefilter {
  input {
    Boolean? sensitivity_faster_fast
    Boolean? kmer_size_range
    Boolean? k_score
    Boolean? alph_size
    Boolean? offset_result
    Boolean? split
    Boolean? split_mode
    Boolean? split_memory_limit
    Boolean? comp_bias_corr
    Boolean? diag_score
    Int? exact_km_er_matching
    Boolean? mask
    Boolean? min_un_gapped_score
    Boolean? add_self_matches
    Boolean? spaced_km_er_mode
    Boolean? list_matches_fraction
    Boolean? cov_mode
    Boolean? pc_a
    Boolean? pcb
    Boolean? no_preload
    File? sub_mat
    Boolean? max_seq_len
    Boolean? max_seqs
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs prefilter \
      ~{if (sensitivity_faster_fast) then "-s" else ""} \
      ~{if (kmer_size_range) then "-k" else ""} \
      ~{if (k_score) then "--k-score" else ""} \
      ~{if (alph_size) then "--alph-size" else ""} \
      ~{if (offset_result) then "--offset-result" else ""} \
      ~{if (split) then "--split" else ""} \
      ~{if (split_mode) then "--split-mode" else ""} \
      ~{if (split_memory_limit) then "--split-memory-limit" else ""} \
      ~{if (comp_bias_corr) then "--comp-bias-corr" else ""} \
      ~{if (diag_score) then "--diag-score" else ""} \
      ~{if defined(exact_km_er_matching) then ("--exact-kmer-matching " +  '"' + exact_km_er_matching + '"') else ""} \
      ~{if (mask) then "--mask" else ""} \
      ~{if (min_un_gapped_score) then "--min-ungapped-score" else ""} \
      ~{if (add_self_matches) then "--add-self-matches" else ""} \
      ~{if (spaced_km_er_mode) then "--spaced-kmer-mode" else ""} \
      ~{if (list_matches_fraction) then "-c" else ""} \
      ~{if (cov_mode) then "--cov-mode" else ""} \
      ~{if (pc_a) then "--pca" else ""} \
      ~{if (pcb) then "--pcb" else ""} \
      ~{if (no_preload) then "--no-preload" else ""} \
      ~{if (sub_mat) then "--sub-mat" else ""} \
      ~{if (max_seq_len) then "--max-seq-len" else ""} \
      ~{if (max_seqs) then "--max-seqs" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sensitivity_faster_fast: "4.000           sensitivity: 1.0 faster; 4.0 fast default; 7.5 sensitive [1.0,7.5]"
    kmer_size_range: "0               k-mer size in the range [6,7] (0: set automatically to optimum)"
    k_score: "2147483647      k-mer threshold for generating similar-k-mer lists"
    alph_size: "21              alphabet size [2,21]"
    offset_result: "0               Offset result list"
    split: "0               Splits input sets into N equally distributed chunks. The default value sets the best split automatically. createindex can only be used with split 1."
    split_mode: "2               0: split target db; 1: split query db;  2: auto, depending on main memory"
    split_memory_limit: "0               Maximum system memory in megabyte that one split may use. Defaults (0) to all available system memory."
    comp_bias_corr: "1               correct for locally biased amino acid composition [0,1]"
    diag_score: "1               use diagonal score for sorting the prefilter results [0,1]"
    exact_km_er_matching: "only exact k-mer matching [0,1]"
    mask: "1               0: w/o low complexity masking, 1: with low complexity masking"
    min_un_gapped_score: "15              accept only matches with ungapped alignment score above this threshold"
    add_self_matches: "false           artificially add entries of queries with themselves (for clustering)"
    spaced_km_er_mode: "1               0: use consecutive positions a k-mers; 1: use spaced k-mers"
    list_matches_fraction: "0.000           list matches above this fraction of aligned (covered) residues (see --cov-mode)"
    cov_mode: "0               0: coverage of query and target, 1: coverage of target, 2: coverage of query 3: target seq. length needs be at least x% of query length"
    pc_a: "1.000           pseudo count admixture strength"
    pcb: "1.500           pseudo counts: Neff at half of maximum admixture (0.0,infinity)"
    no_preload: "false           Do not preload database"
    sub_mat: "blosum62.out    amino acid substitution matrix file"
    max_seq_len: "65535           Maximum sequence length [1,32768]"
    max_seqs: "300             maximum result sequences per query (this parameter affects the sensitivity)"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
    File out_sub_mat = "${in_sub_mat}"
  }
}