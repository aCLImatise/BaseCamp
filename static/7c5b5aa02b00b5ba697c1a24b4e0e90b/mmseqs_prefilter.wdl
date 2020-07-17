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
    String? exact_km_er_matching
    Boolean? mask
    Boolean? min_un_gapped_score
    Boolean? add_self_matches
    Boolean? spaced_km_er_mode
    Boolean? list_matches_fraction
    Boolean? cov_mode
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
    mmseqs prefilter \
      ~{true="-s" false="" sensitivity_faster_fast} \
      ~{true="-k" false="" kmer_size_range} \
      ~{true="--k-score" false="" k_score} \
      ~{true="--alph-size" false="" alph_size} \
      ~{true="--offset-result" false="" offset_result} \
      ~{true="--split" false="" split} \
      ~{true="--split-mode" false="" split_mode} \
      ~{true="--split-memory-limit" false="" split_memory_limit} \
      ~{true="--comp-bias-corr" false="" comp_bias_corr} \
      ~{true="--diag-score" false="" diag_score} \
      ~{if defined(exact_km_er_matching) then ("--exact-kmer-matching " +  '"' + exact_km_er_matching + '"') else ""} \
      ~{true="--mask" false="" mask} \
      ~{true="--min-ungapped-score" false="" min_un_gapped_score} \
      ~{true="--add-self-matches" false="" add_self_matches} \
      ~{true="--spaced-kmer-mode" false="" spaced_km_er_mode} \
      ~{true="-c" false="" list_matches_fraction} \
      ~{true="--cov-mode" false="" cov_mode} \
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
    sensitivity_faster_fast: "4.000           sensitivity: 1.0 faster; 4.0 fast default; 7.5 sensitive [1.0,7.5]"
    kmer_size_range: "0               k-mer size in the range [6,7] (0: set automatically to optimum)"
    k_score: "2147483647      k-mer threshold for generating similar-k-mer lists          "
    alph_size: "21              alphabet size [2,21]                                        "
    offset_result: "0               Offset result list                                          "
    split: "0               Splits input sets into N equally distributed chunks. The default value sets the best split automatically. createindex can only be used with split 1."
    split_mode: "2               0: split target db; 1: split query db;  2: auto, depending on main memory"
    split_memory_limit: "0               Maximum system memory in megabyte that one split may use. Defaults (0) to all available system memory."
    comp_bias_corr: "1               correct for locally biased amino acid composition [0,1]     "
    diag_score: "1               use diagonal score for sorting the prefilter results [0,1]  "
    exact_km_er_matching: "only exact k-mer matching [0,1]                             "
    mask: "1               0: w/o low complexity masking, 1: with low complexity masking"
    min_un_gapped_score: "15              accept only matches with ungapped alignment score above this threshold"
    add_self_matches: "false           artificially add entries of queries with themselves (for clustering)"
    spaced_km_er_mode: "1               0: use consecutive positions a k-mers; 1: use spaced k-mers "
    list_matches_fraction: "0.000           list matches above this fraction of aligned (covered) residues (see --cov-mode)"
    cov_mode: "0               0: coverage of query and target, 1: coverage of target, 2: coverage of query 3: target seq. length needs be at least x% of query length"
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