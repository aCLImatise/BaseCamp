version 1.0

task MmseqsEasycluster {
  input {
    Boolean? sensitivity_automatically_determined
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
    Boolean? false_add_convert
    Boolean? alignment_mode
    Boolean? list_matches_evalue
    Boolean? min_seq_id
    Boolean? seq_id_mode
    Boolean? alt_ali
    Boolean? realign
    Boolean? max_rejected
    Boolean? max_accept
    Boolean? score_bias
    Boolean? cluster_mode
    Boolean? max_iterations
    Boolean? similarity_type
    Boolean? single_step_clustering
    Boolean? cluster_steps
    Boolean? km_er_per_seq
    Boolean? hash_shift
    Boolean? include_only_extendable
    Boolean? skip_n_repeat_km_er
    Boolean? pc_a
    Boolean? pcb
    Boolean? no_preload
    Boolean? re_score_mode
    File? sub_mat
    Boolean? max_seq_len
    Boolean? max_seqs
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs easy_cluster \
      ~{if (sensitivity_automatically_determined) then "-s" else ""} \
      ~{if (kmer_size_range) then "-k" else ""} \
      ~{if (k_score) then "--k-score" else ""} \
      ~{if (alph_size) then "--alph-size" else ""} \
      ~{if (offset_result) then "--offset-result" else ""} \
      ~{if (split) then "--split" else ""} \
      ~{if (split_mode) then "--split-mode" else ""} \
      ~{if (split_memory_limit) then "--split-memory-limit" else ""} \
      ~{if (comp_bias_corr) then "--comp-bias-corr" else ""} \
      ~{if (diag_score) then "--diag-score" else ""} \
      ~{if (exact_km_er_matching) then "--exact-kmer-matching" else ""} \
      ~{if (mask) then "--mask" else ""} \
      ~{if (min_un_gapped_score) then "--min-ungapped-score" else ""} \
      ~{if (add_self_matches) then "--add-self-matches" else ""} \
      ~{if (spaced_km_er_mode) then "--spaced-kmer-mode" else ""} \
      ~{if (list_matches_fraction) then "-c" else ""} \
      ~{if (cov_mode) then "--cov-mode" else ""} \
      ~{if (false_add_convert) then "-a" else ""} \
      ~{if (alignment_mode) then "--alignment-mode" else ""} \
      ~{if (list_matches_evalue) then "-e" else ""} \
      ~{if (min_seq_id) then "--min-seq-id" else ""} \
      ~{if (seq_id_mode) then "--seq-id-mode" else ""} \
      ~{if (alt_ali) then "--alt-ali" else ""} \
      ~{if (realign) then "--realign" else ""} \
      ~{if (max_rejected) then "--max-rejected" else ""} \
      ~{if (max_accept) then "--max-accept" else ""} \
      ~{if (score_bias) then "--score-bias" else ""} \
      ~{if (cluster_mode) then "--cluster-mode" else ""} \
      ~{if (max_iterations) then "--max-iterations" else ""} \
      ~{if (similarity_type) then "--similarity-type" else ""} \
      ~{if (single_step_clustering) then "--single-step-clustering" else ""} \
      ~{if (cluster_steps) then "--cluster-steps" else ""} \
      ~{if (km_er_per_seq) then "--kmer-per-seq" else ""} \
      ~{if (hash_shift) then "--hash-shift" else ""} \
      ~{if (include_only_extendable) then "--include-only-extendable" else ""} \
      ~{if (skip_n_repeat_km_er) then "--skip-n-repeat-kmer" else ""} \
      ~{if (pc_a) then "--pca" else ""} \
      ~{if (pcb) then "--pcb" else ""} \
      ~{if (no_preload) then "--no-preload" else ""} \
      ~{if (re_score_mode) then "--rescore-mode" else ""} \
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
    sensitivity_automatically_determined: "4.000           sensitivity will be automatically determined but can be adjusted"
    kmer_size_range: "0               k-mer size in the range [6,7] (0: set automatically to optimum)"
    k_score: "2147483647      k-mer threshold for generating similar-k-mer lists"
    alph_size: "21              alphabet size [2,21]"
    offset_result: "0               Offset result list"
    split: "0               Splits input sets into N equally distributed chunks. The default value sets the best split automatically. createindex can only be used with split 1."
    split_mode: "2               0: split target db; 1: split query db;  2: auto, depending on main memory"
    split_memory_limit: "0               Maximum system memory in megabyte that one split may use. Defaults (0) to all available system memory."
    comp_bias_corr: "1               correct for locally biased amino acid composition [0,1]"
    diag_score: "1               use diagonal score for sorting the prefilter results [0,1]"
    exact_km_er_matching: "0               only exact k-mer matching [0,1]"
    mask: "1               0: w/o low complexity masking, 1: with low complexity masking"
    min_un_gapped_score: "15              accept only matches with ungapped alignment score above this threshold"
    add_self_matches: "false           artificially add entries of queries with themselves (for clustering)"
    spaced_km_er_mode: "1               0: use consecutive positions a k-mers; 1: use spaced k-mers"
    list_matches_fraction: "0.800           list matches above this fraction of aligned (covered) residues (see --cov-mode)"
    cov_mode: "0               0: coverage of query and target, 1: coverage of target, 2: coverage of query 3: target seq. length needs be at least x% of query length"
    false_add_convert: "false           add backtrace string (convert to alignments with mmseqs convertalis utility)"
    alignment_mode: "3               How to compute the alignment: 0: automatic; 1: only score and end_pos; 2: also start_pos and cov; 3: also seq.id; 4: only ungapped alignment"
    list_matches_evalue: "0.001           list matches below this E-value [0.0, inf]"
    min_seq_id: "0.000           list matches above this sequence identity (for clustering) [0.0,1.0]"
    seq_id_mode: "0               0: alignment length 1: shorter, 2: longer sequence"
    alt_ali: "0               Show up to this many alternative alignments"
    realign: "false           compute more conservative, shorter alignments (scores and E-values not changed)"
    max_rejected: "2147483647      maximum rejected alignments before alignment calculation for a query is aborted"
    max_accept: "2147483647      maximum accepted alignments before alignment calculation for a query is stopped"
    score_bias: "0.000           Score bias when computing the SW alignment (in bits)"
    cluster_mode: "0               0: Setcover, 1: connected component, 2: Greedy clustering by sequence length  3: Greedy clustering by sequence length (low mem)"
    max_iterations: "1000            maximum depth of breadth first search in connected component"
    similarity_type: "2               type of score used for clustering [1:2]. 1=alignment score. 2=sequence identity"
    single_step_clustering: "true            switches from cascaded to simple clustering workflow"
    cluster_steps: "3               cascaded clustering steps from 1 to -s"
    km_er_per_seq: "21              kmer per sequence"
    hash_shift: "5               Shift k-mer hash"
    include_only_extendable: "false           Include only extendable"
    skip_n_repeat_km_er: "0               Skip sequence with >= n exact repeating k-mers"
    pc_a: "1.000           pseudo count admixture strength"
    pcb: "1.500           pseudo counts: Neff at half of maximum admixture (0.0,infinity)"
    no_preload: "false           Do not preload database"
    re_score_mode: "0               Rescore diagonal with: 0: Hamming distance, 1: local alignment (score only) or 2: local alignment"
    sub_mat: "blosum62.out    amino acid substitution matrix file"
    max_seq_len: "65535           Maximum sequence length [1,32768]"
    max_seqs: "20              maximum result sequences per query (this parameter affects the sensitivity)"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
    File out_sub_mat = "${in_sub_mat}"
  }
}