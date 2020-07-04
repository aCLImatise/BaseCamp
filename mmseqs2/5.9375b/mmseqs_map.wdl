version 1.0

task MmseqsMap {
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
    Boolean? exact_km_er_matching
    Boolean? mask
    Boolean? min_un_gapped_score
    Boolean? add_self_matches
    Boolean? spaced_km_er_mode
    Boolean? list_matches_fraction
    Boolean? cov_mode
    Boolean? list_matches_evalue
    Boolean? min_seq_id
    Boolean? seq_id_mode
    Boolean? pc_a
    Boolean? pcb
    Boolean? use_all_table_starts
    Boolean? id_offset
    Boolean? add_orf_stop
    Boolean? start_sens
    Boolean? sens_steps
    Boolean? sub_mat
    Boolean? max_seq_len
    Boolean? max_seqs
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs map \
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
      ~{true="--exact-kmer-matching" false="" exact_km_er_matching} \
      ~{true="--mask" false="" mask} \
      ~{true="--min-ungapped-score" false="" min_un_gapped_score} \
      ~{true="--add-self-matches" false="" add_self_matches} \
      ~{true="--spaced-kmer-mode" false="" spaced_km_er_mode} \
      ~{true="-c" false="" list_matches_fraction} \
      ~{true="--cov-mode" false="" cov_mode} \
      ~{true="-e" false="" list_matches_evalue} \
      ~{true="--min-seq-id" false="" min_seq_id} \
      ~{true="--seq-id-mode" false="" seq_id_mode} \
      ~{true="--pca" false="" pc_a} \
      ~{true="--pcb" false="" pcb} \
      ~{true="--use-all-table-starts" false="" use_all_table_starts} \
      ~{true="--id-offset" false="" id_offset} \
      ~{true="--add-orf-stop" false="" add_orf_stop} \
      ~{true="--start-sens" false="" start_sens} \
      ~{true="--sens-steps" false="" sens_steps} \
      ~{true="--sub-mat" false="" sub_mat} \
      ~{true="--max-seq-len" false="" max_seq_len} \
      ~{true="--max-seqs" false="" max_seqs} \
      ~{true="--threads" false="" threads} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    sensitivity_faster_fast: "2.000           sensitivity: 1.0 faster; 4.0 fast default; 7.5 sensitive [1.0,7.5]"
    kmer_size_range: "0               k-mer size in the range [6,7] (0: set automatically to optimum)"
    k_score: "2147483647      k-mer threshold for generating similar-k-mer lists          "
    alph_size: "21              alphabet size [2,21]                                        "
    offset_result: "0               Offset result list                                          "
    split: "0               Splits input sets into N equally distributed chunks. The default value sets the best split automatically. createindex can only be used with split 1."
    split_mode: "2               0: split target db; 1: split query db;  2: auto, depending on main memory"
    split_memory_limit: "0               Maximum system memory in megabyte that one split may use. Defaults (0) to all available system memory."
    comp_bias_corr: "0               correct for locally biased amino acid composition [0,1]     "
    diag_score: "1               use diagonal score for sorting the prefilter results [0,1]  "
    exact_km_er_matching: "0               only exact k-mer matching [0,1]                             "
    mask: "0               0: w/o low complexity masking, 1: with low complexity masking"
    min_un_gapped_score: "15              accept only matches with ungapped alignment score above this threshold"
    add_self_matches: "false           artificially add entries of queries with themselves (for clustering)"
    spaced_km_er_mode: "1               0: use consecutive positions a k-mers; 1: use spaced k-mers "
    list_matches_fraction: "0.000           list matches above this fraction of aligned (covered) residues (see --cov-mode)"
    cov_mode: "2               0: coverage of query and target, 1: coverage of target, 2: coverage of query 3: target seq. length needs be at least x% of query length"
    list_matches_evalue: "0.001           list matches below this E-value [0.0, inf]                  "
    min_seq_id: "0.900           list matches above this sequence identity (for clustering) [0.0,1.0]"
    seq_id_mode: "0               0: alignment length 1: shorter, 2: longer sequence          "
    pc_a: "1.000           pseudo count admixture strength                             "
    pcb: "1.500           pseudo counts: Neff at half of maximum admixture (0.0,infinity)"
    use_all_table_starts: "false           use all alteratives for a start codon in the genetic table, if false - only ATG (AUG)"
    id_offset: "0               numeric ids in index file are offset by this value          "
    add_orf_stop: "false           add * at complete start and end                             "
    start_sens: "4.000           start sensitivity                                           "
    sens_steps: "1               Search steps performed from --start-sense and -s.           "
    sub_mat: "blosum62.out    amino acid substitution matrix file                         "
    max_seq_len: "65535           Maximum sequence length [1,32768]                           "
    max_seqs: "300             maximum result sequences per query (this parameter affects the sensitivity)"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}