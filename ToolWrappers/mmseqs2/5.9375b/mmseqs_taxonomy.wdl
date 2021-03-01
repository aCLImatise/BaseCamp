version 1.0

task MmseqsTaxonomy {
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
    Boolean? pc_a
    Boolean? pcb
    Boolean? mask_profile
    Boolean? e_profile
    Boolean? wg
    Boolean? filter_msa
    Boolean? max_seq_id
    Boolean? qid
    Boolean? two_zero_dot_zero_zero_zero
    Boolean? cov
    Boolean? diff
    Boolean? num_iterations
    Boolean? no_preload
    Boolean? re_score_mode
    Boolean? min_length
    Boolean? max_length
    Boolean? max_gaps
    Boolean? contig_start_mode
    Boolean? contig_end_mode
    Boolean? orf_start_mode
    Boolean? forward_frames
    Boolean? reverse_frames
    Boolean? translation_table
    Boolean? use_all_table_starts
    Boolean? id_offset
    Boolean? add_orf_stop
    Boolean? start_sens
    Boolean? sens_steps
    Boolean? lca_ranks
    Boolean? blacklist
    Boolean? lca_mode
    File? sub_mat
    Boolean? max_seq_len
    Boolean? max_seqs
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs taxonomy \
      ~{if (comp_bias_corr) then "--comp-bias-corr" else ""} \
      ~{if (add_self_matches) then "--add-self-matches" else ""} \
      ~{if (sensitivity_faster_fast) then "-s" else ""} \
      ~{if (kmer_size_range) then "-k" else ""} \
      ~{if (k_score) then "--k-score" else ""} \
      ~{if (alph_size) then "--alph-size" else ""} \
      ~{if (offset_result) then "--offset-result" else ""} \
      ~{if (split) then "--split" else ""} \
      ~{if (split_mode) then "--split-mode" else ""} \
      ~{if (split_memory_limit) then "--split-memory-limit" else ""} \
      ~{if (diag_score) then "--diag-score" else ""} \
      ~{if (exact_km_er_matching) then "--exact-kmer-matching" else ""} \
      ~{if (mask) then "--mask" else ""} \
      ~{if (min_un_gapped_score) then "--min-ungapped-score" else ""} \
      ~{if (spaced_km_er_mode) then "--spaced-kmer-mode" else ""} \
      ~{if (false_add_convert) then "-a" else ""} \
      ~{if (alignment_mode) then "--alignment-mode" else ""} \
      ~{if (list_matches_evalue) then "-e" else ""} \
      ~{if (min_seq_id) then "--min-seq-id" else ""} \
      ~{if (seq_id_mode) then "--seq-id-mode" else ""} \
      ~{if (alt_ali) then "--alt-ali" else ""} \
      ~{if (list_matches_fraction) then "-c" else ""} \
      ~{if (cov_mode) then "--cov-mode" else ""} \
      ~{if (realign) then "--realign" else ""} \
      ~{if (max_rejected) then "--max-rejected" else ""} \
      ~{if (max_accept) then "--max-accept" else ""} \
      ~{if (score_bias) then "--score-bias" else ""} \
      ~{if (pc_a) then "--pca" else ""} \
      ~{if (pcb) then "--pcb" else ""} \
      ~{if (mask_profile) then "--mask-profile" else ""} \
      ~{if (e_profile) then "--e-profile" else ""} \
      ~{if (wg) then "--wg" else ""} \
      ~{if (filter_msa) then "--filter-msa" else ""} \
      ~{if (max_seq_id) then "--max-seq-id" else ""} \
      ~{if (qid) then "--qid" else ""} \
      ~{if (two_zero_dot_zero_zero_zero) then "-20.000" else ""} \
      ~{if (cov) then "--cov" else ""} \
      ~{if (diff) then "--diff" else ""} \
      ~{if (num_iterations) then "--num-iterations" else ""} \
      ~{if (no_preload) then "--no-preload" else ""} \
      ~{if (re_score_mode) then "--rescore-mode" else ""} \
      ~{if (min_length) then "--min-length" else ""} \
      ~{if (max_length) then "--max-length" else ""} \
      ~{if (max_gaps) then "--max-gaps" else ""} \
      ~{if (contig_start_mode) then "--contig-start-mode" else ""} \
      ~{if (contig_end_mode) then "--contig-end-mode" else ""} \
      ~{if (orf_start_mode) then "--orf-start-mode" else ""} \
      ~{if (forward_frames) then "--forward-frames" else ""} \
      ~{if (reverse_frames) then "--reverse-frames" else ""} \
      ~{if (translation_table) then "--translation-table" else ""} \
      ~{if (use_all_table_starts) then "--use-all-table-starts" else ""} \
      ~{if (id_offset) then "--id-offset" else ""} \
      ~{if (add_orf_stop) then "--add-orf-stop" else ""} \
      ~{if (start_sens) then "--start-sens" else ""} \
      ~{if (sens_steps) then "--sens-steps" else ""} \
      ~{if (lca_ranks) then "--lca-ranks" else ""} \
      ~{if (blacklist) then "--blacklist" else ""} \
      ~{if (lca_mode) then "--lca-mode" else ""} \
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
    comp_bias_corr: "1               correct for locally biased amino acid composition [0,1]"
    add_self_matches: "false           artificially add entries of queries with themselves (for clustering)"
    sensitivity_faster_fast: "4.000           sensitivity: 1.0 faster; 4.0 fast default; 7.5 sensitive [1.0,7.5]"
    kmer_size_range: "0               k-mer size in the range [6,7] (0: set automatically to optimum)"
    k_score: "2147483647      k-mer threshold for generating similar-k-mer lists"
    alph_size: "21              alphabet size [2,21]"
    offset_result: "0               Offset result list"
    split: "0               Splits input sets into N equally distributed chunks. The default value sets the best split automatically. createindex can only be used with split 1."
    split_mode: "2               0: split target db; 1: split query db;  2: auto, depending on main memory"
    split_memory_limit: "0               Maximum system memory in megabyte that one split may use. Defaults (0) to all available system memory."
    diag_score: "1               use diagonal score for sorting the prefilter results [0,1]"
    exact_km_er_matching: "0               only exact k-mer matching [0,1]"
    mask: "1               0: w/o low complexity masking, 1: with low complexity masking"
    min_un_gapped_score: "15              accept only matches with ungapped alignment score above this threshold"
    spaced_km_er_mode: "1               0: use consecutive positions a k-mers; 1: use spaced k-mers"
    false_add_convert: "false           add backtrace string (convert to alignments with mmseqs convertalis utility)"
    alignment_mode: "0               How to compute the alignment: 0: automatic; 1: only score and end_pos; 2: also start_pos and cov; 3: also seq.id; 4: only ungapped alignment"
    list_matches_evalue: "0.001           list matches below this E-value [0.0, inf]"
    min_seq_id: "0.000           list matches above this sequence identity (for clustering) [0.0,1.0]"
    seq_id_mode: "0               0: alignment length 1: shorter, 2: longer sequence"
    alt_ali: "0               Show up to this many alternative alignments"
    list_matches_fraction: "0.000           list matches above this fraction of aligned (covered) residues (see --cov-mode)"
    cov_mode: "0               0: coverage of query and target, 1: coverage of target, 2: coverage of query 3: target seq. length needs be at least x% of query length"
    realign: "false           compute more conservative, shorter alignments (scores and E-values not changed)"
    max_rejected: "2147483647      maximum rejected alignments before alignment calculation for a query is aborted"
    max_accept: "2147483647      maximum accepted alignments before alignment calculation for a query is stopped"
    score_bias: "0.000           Score bias when computing the SW alignment (in bits)"
    pc_a: "1.000           pseudo count admixture strength"
    pcb: "1.500           pseudo counts: Neff at half of maximum admixture (0.0,infinity)"
    mask_profile: "1               mask query sequence of profile using tantan [0,1]"
    e_profile: "0.001           includes sequences matches with < e-value thr. into the profile [>=0.0]"
    wg: "false           use global sequence weighting for profile calculation"
    filter_msa: "1               filter msa: 0: do not filter, 1: filter"
    max_seq_id: "0.900           reduce redundancy of output MSA using max. pairwise sequence identity [0.0,1.0]"
    qid: "0.000           reduce diversity of output MSAs using min.seq. identity with query sequences [0.0,1.0]"
    two_zero_dot_zero_zero_zero: "reduce diversity of output MSAs using min. score per aligned residue with query sequences [-50.0,100.0]"
    cov: "0.000           filter output MSAs using min. fraction of query residues covered by matched sequences [0.0,1.0]"
    diff: "1000            filter MSAs by selecting most diverse set of sequences, keeping at least this many seqs in each MSA block of length 50"
    num_iterations: "1               Search iterations"
    no_preload: "false           Do not preload database"
    re_score_mode: "0               Rescore diagonal with: 0: Hamming distance, 1: local alignment (score only) or 2: local alignment"
    min_length: "1               minimum codon number in open reading frames"
    max_length: "2147483647      maximum codon number in open reading frames"
    max_gaps: "2147483647      maximum number of codons with gaps or unknown residues before an open reading frame is rejected"
    contig_start_mode: "2               Contig start can be 0: incomplete, 1: complete, 2: both"
    contig_end_mode: "2               Contig end can be 0: incomplete, 1: complete, 2: both"
    orf_start_mode: "0               Orf fragment can be 0: from start to stop, 1: from any to stop, 2: from last encountered start to stop (no start in the middle)"
    forward_frames: "1,2,3           comma-seperated list of ORF frames on the forward strand to be extracted"
    reverse_frames: "1,2,3           comma-seperated list of ORF frames on the reverse strand to be extracted"
    translation_table: "1               1) CANONICAL, 2) VERT_MITOCHONDRIAL, 3) YEAST_MITOCHONDRIAL, 4) MOLD_MITOCHONDRIAL, 5) INVERT_MITOCHONDRIAL, 6) CILIATE, 9) FLATWORM_MITOCHONDRIAL, 10) EUPLOTID, 11) PROKARYOTE, 12) ALT_YEAST, 13) ASCIDIAN_MITOCHONDRIAL, 14) ALT_FLATWORM_MITOCHONDRIAL, 15) BLEPHARISMA, 16) CHLOROPHYCEAN_MITOCHONDRIAL, 21) TREMATODE_MITOCHONDRIAL, 22) SCENEDESMUS_MITOCHONDRIAL, 23) THRAUSTOCHYTRIUM_MITOCHONDRIAL, 24) PTEROBRANCHIA_MITOCHONDRIAL, 25) GRACILIBACTERIA, 26) PACHYSOLEN, 27) KARYORELICT, 28) CONDYLOSTOMA, 29) MESODINIUM, 30) PERTRICH, 31) BLASTOCRITHIDIA"
    use_all_table_starts: "false           use all alteratives for a start codon in the genetic table, if false - only ATG (AUG)"
    id_offset: "0               numeric ids in index file are offset by this value"
    add_orf_stop: "false           add * at complete start and end"
    start_sens: "4.000           start sensitivity"
    sens_steps: "1               Search steps performed from --start-sense and -s."
    lca_ranks: "Ranks to return in LCA computation"
    blacklist: "12908,28384     Comma separted list of ignored taxa in LCA computation"
    lca_mode: "2               LCA Mode: No LCA 0, Single Search LCA 1, 2bLCA 2"
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