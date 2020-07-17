version 1.0

task MmseqsLinclust {
  input {
    Boolean? comp_bias_corr
    Boolean? add_self_matches
    Boolean? alph_size
    Boolean? mask
    Boolean? kmer_size_range
    Boolean? split_memory_limit
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
    Boolean? cluster_mode
    Boolean? max_iterations
    Boolean? similarity_type
    Boolean? km_er_per_seq
    Boolean? hash_shift
    Boolean? include_only_extendable
    Boolean? skip_n_repeat_km_er
    Boolean? pc_a
    Boolean? pcb
    Boolean? no_preload
    Boolean? re_score_mode
    Boolean? threads
    Boolean? verbosity_level_nothing
    Boolean? sub_mat
    Boolean? max_seq_len
    Boolean? max_seqs
  }
  command <<<
    mmseqs linclust \
      ~{true="--comp-bias-corr" false="" comp_bias_corr} \
      ~{true="--add-self-matches" false="" add_self_matches} \
      ~{true="--alph-size" false="" alph_size} \
      ~{true="--mask" false="" mask} \
      ~{true="-k" false="" kmer_size_range} \
      ~{true="--split-memory-limit" false="" split_memory_limit} \
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
      ~{true="--cluster-mode" false="" cluster_mode} \
      ~{true="--max-iterations" false="" max_iterations} \
      ~{true="--similarity-type" false="" similarity_type} \
      ~{true="--kmer-per-seq" false="" km_er_per_seq} \
      ~{true="--hash-shift" false="" hash_shift} \
      ~{true="--include-only-extendable" false="" include_only_extendable} \
      ~{true="--skip-n-repeat-kmer" false="" skip_n_repeat_km_er} \
      ~{true="--pca" false="" pc_a} \
      ~{true="--pcb" false="" pcb} \
      ~{true="--no-preload" false="" no_preload} \
      ~{true="--rescore-mode" false="" re_score_mode} \
      ~{true="--threads" false="" threads} \
      ~{true="-v" false="" verbosity_level_nothing} \
      ~{true="--sub-mat" false="" sub_mat} \
      ~{true="--max-seq-len" false="" max_seq_len} \
      ~{true="--max-seqs" false="" max_seqs}
  >>>
  parameter_meta {
    comp_bias_corr: "1               correct for locally biased amino acid composition [0,1]     "
    add_self_matches: "false           artificially add entries of queries with themselves (for clustering)"
    alph_size: "21              alphabet size [2,21]                                        "
    mask: "0               0: w/o low complexity masking, 1: with low complexity masking"
    kmer_size_range: "0               k-mer size in the range [6,7] (0: set automatically to optimum)"
    split_memory_limit: "0               Maximum system memory in megabyte that one split may use. Defaults (0) to all available system memory."
    false_add_convert: "false           add backtrace string (convert to alignments with mmseqs convertalis utility)"
    alignment_mode: "2               How to compute the alignment: 0: automatic; 1: only score and end_pos; 2: also start_pos and cov; 3: also seq.id; 4: only ungapped alignment"
    list_matches_evalue: "0.001           list matches below this E-value [0.0, inf]                  "
    min_seq_id: "0.900           list matches above this sequence identity (for clustering) [0.0,1.0]"
    seq_id_mode: "0               0: alignment length 1: shorter, 2: longer sequence          "
    alt_ali: "0               Show up to this many alternative alignments                 "
    list_matches_fraction: "0.800           list matches above this fraction of aligned (covered) residues (see --cov-mode)"
    cov_mode: "0               0: coverage of query and target, 1: coverage of target, 2: coverage of query 3: target seq. length needs be at least x% of query length"
    realign: "false           compute more conservative, shorter alignments (scores and E-values not changed)"
    max_rejected: "2147483647      maximum rejected alignments before alignment calculation for a query is aborted"
    max_accept: "2147483647      maximum accepted alignments before alignment calculation for a query is stopped"
    score_bias: "0.000           Score bias when computing the SW alignment (in bits)        "
    cluster_mode: "0               0: Setcover, 1: connected component, 2: Greedy clustering by sequence length  3: Greedy clustering by sequence length (low mem)"
    max_iterations: "1000            maximum depth of breadth first search in connected component"
    similarity_type: "2               type of score used for clustering [1:2]. 1=alignment score. 2=sequence identity "
    km_er_per_seq: "21              kmer per sequence                                           "
    hash_shift: "5               Shift k-mer hash                                            "
    include_only_extendable: "false           Include only extendable                                     "
    skip_n_repeat_km_er: "0               Skip sequence with >= n exact repeating k-mers              "
    pc_a: "1.000           pseudo count admixture strength                             "
    pcb: "1.500           pseudo counts: Neff at half of maximum admixture (0.0,infinity)"
    no_preload: "false           Do not preload database                                     "
    re_score_mode: "0               Rescore diagonal with: 0: Hamming distance, 1: local alignment (score only) or 2: local alignment"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
    sub_mat: "blosum62.out    amino acid substitution matrix file                         "
    max_seq_len: "65535           Maximum sequence length [1,32768]                           "
    max_seqs: "300             maximum result sequences per query (this parameter affects the sensitivity)"
  }
}