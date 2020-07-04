version 1.0

task MmseqsClusterupdate {
  input {
    Boolean? comp_bias_corr
    Boolean? add_self_matches
    Boolean? sensitivity_faster_fast
    Boolean? kmer_size_range
    Boolean? k_score
    Boolean? alph_size
    Boolean? offset_result
    Boolean? split
    Boolean? split_mode
    Boolean? split_memory_limit
    Boolean? diag_score
    Boolean? exact_km_er_matching
    Boolean? mask
    Boolean? min_un_gapped_score
    Boolean? spaced_km_er_mode
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
    Boolean? single_step_clustering
    Boolean? cluster_steps
    Boolean? km_er_per_seq
    Boolean? hash_shift
    Boolean? include_only_extendable
    Boolean? skip_n_repeat_km_er
    Boolean? pc_a
    Boolean? pcb
    Boolean? mask_profile
    Boolean? e_profile
    Boolean? wg
    Boolean? filter_msa
    Boolean? max_seq_id
    Boolean? qid
    Boolean? qsc
    Boolean? cov
    Boolean? diff
    Boolean? num_iterations
    Boolean? use_all_table_starts
    Boolean? id_offset
    Boolean? add_orf_stop
    Boolean? start_sens
    Boolean? sens_steps
    Boolean? use_seq_id
    Boolean? recover_deleted
    Boolean? sub_mat
    Boolean? max_seq_len
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs clusterupdate \
      ~{true="--comp-bias-corr" false="" comp_bias_corr} \
      ~{true="--add-self-matches" false="" add_self_matches} \
      ~{true="-s" false="" sensitivity_faster_fast} \
      ~{true="-k" false="" kmer_size_range} \
      ~{true="--k-score" false="" k_score} \
      ~{true="--alph-size" false="" alph_size} \
      ~{true="--offset-result" false="" offset_result} \
      ~{true="--split" false="" split} \
      ~{true="--split-mode" false="" split_mode} \
      ~{true="--split-memory-limit" false="" split_memory_limit} \
      ~{true="--diag-score" false="" diag_score} \
      ~{true="--exact-kmer-matching" false="" exact_km_er_matching} \
      ~{true="--mask" false="" mask} \
      ~{true="--min-ungapped-score" false="" min_un_gapped_score} \
      ~{true="--spaced-kmer-mode" false="" spaced_km_er_mode} \
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
      ~{true="--single-step-clustering" false="" single_step_clustering} \
      ~{true="--cluster-steps" false="" cluster_steps} \
      ~{true="--kmer-per-seq" false="" km_er_per_seq} \
      ~{true="--hash-shift" false="" hash_shift} \
      ~{true="--include-only-extendable" false="" include_only_extendable} \
      ~{true="--skip-n-repeat-kmer" false="" skip_n_repeat_km_er} \
      ~{true="--pca" false="" pc_a} \
      ~{true="--pcb" false="" pcb} \
      ~{true="--mask-profile" false="" mask_profile} \
      ~{true="--e-profile" false="" e_profile} \
      ~{true="--wg" false="" wg} \
      ~{true="--filter-msa" false="" filter_msa} \
      ~{true="--max-seq-id" false="" max_seq_id} \
      ~{true="--qid" false="" qid} \
      ~{true="--qsc" false="" qsc} \
      ~{true="--cov" false="" cov} \
      ~{true="--diff" false="" diff} \
      ~{true="--num-iterations" false="" num_iterations} \
      ~{true="--use-all-table-starts" false="" use_all_table_starts} \
      ~{true="--id-offset" false="" id_offset} \
      ~{true="--add-orf-stop" false="" add_orf_stop} \
      ~{true="--start-sens" false="" start_sens} \
      ~{true="--sens-steps" false="" sens_steps} \
      ~{true="--use-seq-id" false="" use_seq_id} \
      ~{true="--recover-deleted" false="" recover_deleted} \
      ~{true="--sub-mat" false="" sub_mat} \
      ~{true="--max-seq-len" false="" max_seq_len} \
      ~{true="--threads" false="" threads} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    comp_bias_corr: "1               correct for locally biased amino acid composition [0,1]     "
    add_self_matches: "false           artificially add entries of queries with themselves (for clustering)"
    sensitivity_faster_fast: "4.000           sensitivity: 1.0 faster; 4.0 fast default; 7.5 sensitive [1.0,7.5]"
    kmer_size_range: "0               k-mer size in the range [6,7] (0: set automatically to optimum)"
    k_score: "2147483647      k-mer threshold for generating similar-k-mer lists          "
    alph_size: "21              alphabet size [2,21]                                        "
    offset_result: "0               Offset result list                                          "
    split: "0               Splits input sets into N equally distributed chunks. The default value sets the best split automatically. createindex can only be used with split 1."
    split_mode: "2               0: split target db; 1: split query db;  2: auto, depending on main memory"
    split_memory_limit: "0               Maximum system memory in megabyte that one split may use. Defaults (0) to all available system memory."
    diag_score: "1               use diagonal score for sorting the prefilter results [0,1]  "
    exact_km_er_matching: "0               only exact k-mer matching [0,1]                             "
    mask: "1               0: w/o low complexity masking, 1: with low complexity masking"
    min_un_gapped_score: "15              accept only matches with ungapped alignment score above this threshold"
    spaced_km_er_mode: "1               0: use consecutive positions a k-mers; 1: use spaced k-mers "
    false_add_convert: "false           add backtrace string (convert to alignments with mmseqs convertalis utility)"
    alignment_mode: "0               How to compute the alignment: 0: automatic; 1: only score and end_pos; 2: also start_pos and cov; 3: also seq.id; 4: only ungapped alignment"
    list_matches_evalue: "0.001           list matches below this E-value [0.0, inf]                  "
    min_seq_id: "0.000           list matches above this sequence identity (for clustering) [0.0,1.0]"
    seq_id_mode: "0               0: alignment length 1: shorter, 2: longer sequence          "
    alt_ali: "0               Show up to this many alternative alignments                 "
    list_matches_fraction: "0.000           list matches above this fraction of aligned (covered) residues (see --cov-mode)"
    cov_mode: "0               0: coverage of query and target, 1: coverage of target, 2: coverage of query 3: target seq. length needs be at least x% of query length"
    realign: "false           compute more conservative, shorter alignments (scores and E-values not changed)"
    max_rejected: "2147483647      maximum rejected alignments before alignment calculation for a query is aborted"
    max_accept: "2147483647      maximum accepted alignments before alignment calculation for a query is stopped"
    score_bias: "0.000           Score bias when computing the SW alignment (in bits)        "
    cluster_mode: "0               0: Setcover, 1: connected component, 2: Greedy clustering by sequence length  3: Greedy clustering by sequence length (low mem)"
    max_iterations: "1000            maximum depth of breadth first search in connected component"
    similarity_type: "2               type of score used for clustering [1:2]. 1=alignment score. 2=sequence identity "
    single_step_clustering: "true            switches from cascaded to simple clustering workflow        "
    cluster_steps: "3               cascaded clustering steps from 1 to -s                      "
    km_er_per_seq: "21              kmer per sequence                                           "
    hash_shift: "5               Shift k-mer hash                                            "
    include_only_extendable: "false           Include only extendable                                     "
    skip_n_repeat_km_er: "0               Skip sequence with >= n exact repeating k-mers              "
    pc_a: "1.000           pseudo count admixture strength                             "
    pcb: "1.500           pseudo counts: Neff at half of maximum admixture (0.0,infinity)"
    mask_profile: "1               mask query sequence of profile using tantan [0,1]           "
    e_profile: "0.001           includes sequences matches with < e-value thr. into the profile [>=0.0]"
    wg: "false           use global sequence weighting for profile calculation       "
    filter_msa: "1               filter msa: 0: do not filter, 1: filter                     "
    max_seq_id: "0.900           reduce redundancy of output MSA using max. pairwise sequence identity [0.0,1.0]"
    qid: "0.000           reduce diversity of output MSAs using min.seq. identity with query sequences [0.0,1.0]"
    qsc: "-20.000         reduce diversity of output MSAs using min. score per aligned residue with query sequences [-50.0,100.0]"
    cov: "0.000           filter output MSAs using min. fraction of query residues covered by matched sequences [0.0,1.0]"
    diff: "1000            filter MSAs by selecting most diverse set of sequences, keeping at least this many seqs in each MSA block of length 50"
    num_iterations: "1               Search iterations                                           "
    use_all_table_starts: "false           use all alteratives for a start codon in the genetic table, if false - only ATG (AUG)"
    id_offset: "0               numeric ids in index file are offset by this value          "
    add_orf_stop: "false           add * at complete start and end                             "
    start_sens: "4.000           start sensitivity                                           "
    sens_steps: "1               Search steps performed from --start-sense and -s.           "
    use_seq_id: "false           Sequence ID (Uniprot, GenBank, ...) is used for identifying matches between the old and the new DB."
    recover_deleted: "false           Indicates if sequences are allowed to be be removed during updating"
    sub_mat: "blosum62.out    amino acid substitution matrix file                         "
    max_seq_len: "65535           Maximum sequence length [1,32768]                           "
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}