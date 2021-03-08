version 1.0

task MmseqsCluster {
  input {
    File? seed_sub_mat
    Float? sensitivity_faster_fast
    Int? kmer_length_set
    Int? k_score
    Int? alph_size
    Int? max_seqs
    Int? split
    Int? split_mode
    Int? split_memory_limit
    Int? comp_bias_corr
    Boolean? diag_score
    Int? exact_km_er_matching
    Int? mask
    Int? mask_lower_case
    Int? min_un_gapped_score
    Boolean? add_self_matches
    Int? spaced_km_er_mode
    String? spaced_km_er_pattern
    File? local_tmp
    Float? list_matches_fraction
    Int? cov_mode
    Boolean? add_string_convert
    Int? alignment_mode
    Int? alignment_output_mode
    Boolean? wrapped_scoring
    Float? list_matches_evalue
    Float? min_seq_id
    Int? min_aln_len
    Int? seq_id_mode
    Int? alt_ali
    Int? max_rejected
    Int? max_accept
    Float? score_bias
    Boolean? realign
    Float? realign_score_bias
    Int? realign_max_seqs
    Int? gap_open
    Int? gap_extend
    Int? z_drop
    Int? cluster_mode
    Int? max_iterations
    Int? similarity_type
    Boolean? single_step_clustering
    Int? cluster_steps
    Boolean? cluster_reassign
    Int? km_er_per_seq
    Int? km_er_per_seq_scale
    Boolean? adjust_km_er_len
    Int? hash_shift
    Boolean? include_only_extendable
    Boolean? ignore_multi_km_er
    Float? pc_a
    Float? pcb
    Int? re_score_mode
    File? sub_mat
    Int? max_seq_len
    Int? db_load_mode
    Int? threads
    Int? compressed
    Int? verbosity_level_errors
    Boolean? remove_tmp_files
    Boolean? force_reuse
    Int? mpi_runner
    Boolean? filter_hits
    Int? sort_results
  }
  command <<<
    mmseqs cluster \
      ~{if defined(seed_sub_mat) then ("--seed-sub-mat " +  '"' + seed_sub_mat + '"') else ""} \
      ~{if defined(sensitivity_faster_fast) then ("-s " +  '"' + sensitivity_faster_fast + '"') else ""} \
      ~{if defined(kmer_length_set) then ("-k " +  '"' + kmer_length_set + '"') else ""} \
      ~{if defined(k_score) then ("--k-score " +  '"' + k_score + '"') else ""} \
      ~{if defined(alph_size) then ("--alph-size " +  '"' + alph_size + '"') else ""} \
      ~{if defined(max_seqs) then ("--max-seqs " +  '"' + max_seqs + '"') else ""} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""} \
      ~{if defined(split_mode) then ("--split-mode " +  '"' + split_mode + '"') else ""} \
      ~{if defined(split_memory_limit) then ("--split-memory-limit " +  '"' + split_memory_limit + '"') else ""} \
      ~{if defined(comp_bias_corr) then ("--comp-bias-corr " +  '"' + comp_bias_corr + '"') else ""} \
      ~{if defined(diag_score) then ("--diag-score " +  '"' + diag_score + '"') else ""} \
      ~{if defined(exact_km_er_matching) then ("--exact-kmer-matching " +  '"' + exact_km_er_matching + '"') else ""} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if defined(mask_lower_case) then ("--mask-lower-case " +  '"' + mask_lower_case + '"') else ""} \
      ~{if defined(min_un_gapped_score) then ("--min-ungapped-score " +  '"' + min_un_gapped_score + '"') else ""} \
      ~{if defined(add_self_matches) then ("--add-self-matches " +  '"' + add_self_matches + '"') else ""} \
      ~{if defined(spaced_km_er_mode) then ("--spaced-kmer-mode " +  '"' + spaced_km_er_mode + '"') else ""} \
      ~{if defined(spaced_km_er_pattern) then ("--spaced-kmer-pattern " +  '"' + spaced_km_er_pattern + '"') else ""} \
      ~{if defined(local_tmp) then ("--local-tmp " +  '"' + local_tmp + '"') else ""} \
      ~{if defined(list_matches_fraction) then ("-c " +  '"' + list_matches_fraction + '"') else ""} \
      ~{if defined(cov_mode) then ("--cov-mode " +  '"' + cov_mode + '"') else ""} \
      ~{if defined(add_string_convert) then ("-a " +  '"' + add_string_convert + '"') else ""} \
      ~{if defined(alignment_mode) then ("--alignment-mode " +  '"' + alignment_mode + '"') else ""} \
      ~{if defined(alignment_output_mode) then ("--alignment-output-mode " +  '"' + alignment_output_mode + '"') else ""} \
      ~{if defined(wrapped_scoring) then ("--wrapped-scoring " +  '"' + wrapped_scoring + '"') else ""} \
      ~{if defined(list_matches_evalue) then ("-e " +  '"' + list_matches_evalue + '"') else ""} \
      ~{if defined(min_seq_id) then ("--min-seq-id " +  '"' + min_seq_id + '"') else ""} \
      ~{if defined(min_aln_len) then ("--min-aln-len " +  '"' + min_aln_len + '"') else ""} \
      ~{if defined(seq_id_mode) then ("--seq-id-mode " +  '"' + seq_id_mode + '"') else ""} \
      ~{if defined(alt_ali) then ("--alt-ali " +  '"' + alt_ali + '"') else ""} \
      ~{if defined(max_rejected) then ("--max-rejected " +  '"' + max_rejected + '"') else ""} \
      ~{if defined(max_accept) then ("--max-accept " +  '"' + max_accept + '"') else ""} \
      ~{if defined(score_bias) then ("--score-bias " +  '"' + score_bias + '"') else ""} \
      ~{if defined(realign) then ("--realign " +  '"' + realign + '"') else ""} \
      ~{if defined(realign_score_bias) then ("--realign-score-bias " +  '"' + realign_score_bias + '"') else ""} \
      ~{if defined(realign_max_seqs) then ("--realign-max-seqs " +  '"' + realign_max_seqs + '"') else ""} \
      ~{if defined(gap_open) then ("--gap-open " +  '"' + gap_open + '"') else ""} \
      ~{if defined(gap_extend) then ("--gap-extend " +  '"' + gap_extend + '"') else ""} \
      ~{if defined(z_drop) then ("--zdrop " +  '"' + z_drop + '"') else ""} \
      ~{if defined(cluster_mode) then ("--cluster-mode " +  '"' + cluster_mode + '"') else ""} \
      ~{if defined(max_iterations) then ("--max-iterations " +  '"' + max_iterations + '"') else ""} \
      ~{if defined(similarity_type) then ("--similarity-type " +  '"' + similarity_type + '"') else ""} \
      ~{if defined(single_step_clustering) then ("--single-step-clustering " +  '"' + single_step_clustering + '"') else ""} \
      ~{if defined(cluster_steps) then ("--cluster-steps " +  '"' + cluster_steps + '"') else ""} \
      ~{if defined(cluster_reassign) then ("--cluster-reassign " +  '"' + cluster_reassign + '"') else ""} \
      ~{if defined(km_er_per_seq) then ("--kmer-per-seq " +  '"' + km_er_per_seq + '"') else ""} \
      ~{if defined(km_er_per_seq_scale) then ("--kmer-per-seq-scale " +  '"' + km_er_per_seq_scale + '"') else ""} \
      ~{if defined(adjust_km_er_len) then ("--adjust-kmer-len " +  '"' + adjust_km_er_len + '"') else ""} \
      ~{if defined(hash_shift) then ("--hash-shift " +  '"' + hash_shift + '"') else ""} \
      ~{if defined(include_only_extendable) then ("--include-only-extendable " +  '"' + include_only_extendable + '"') else ""} \
      ~{if defined(ignore_multi_km_er) then ("--ignore-multi-kmer " +  '"' + ignore_multi_km_er + '"') else ""} \
      ~{if defined(pc_a) then ("--pca " +  '"' + pc_a + '"') else ""} \
      ~{if defined(pcb) then ("--pcb " +  '"' + pcb + '"') else ""} \
      ~{if defined(re_score_mode) then ("--rescore-mode " +  '"' + re_score_mode + '"') else ""} \
      ~{if defined(sub_mat) then ("--sub-mat " +  '"' + sub_mat + '"') else ""} \
      ~{if defined(max_seq_len) then ("--max-seq-len " +  '"' + max_seq_len + '"') else ""} \
      ~{if defined(db_load_mode) then ("--db-load-mode " +  '"' + db_load_mode + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""} \
      ~{if defined(remove_tmp_files) then ("--remove-tmp-files " +  '"' + remove_tmp_files + '"') else ""} \
      ~{if defined(force_reuse) then ("--force-reuse " +  '"' + force_reuse + '"') else ""} \
      ~{if defined(mpi_runner) then ("--mpi-runner " +  '"' + mpi_runner + '"') else ""} \
      ~{if defined(filter_hits) then ("--filter-hits " +  '"' + filter_hits + '"') else ""} \
      ~{if defined(sort_results) then ("--sort-results " +  '"' + sort_results + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    seed_sub_mat: "Substitution matrix file for k-mer generation [nucl:nucleotide.out,aa:VTML80.out]"
    sensitivity_faster_fast: "Sensitivity: 1.0 faster; 4.0 fast; 7.5 sensitive [4.000]"
    kmer_length_set: "k-mer length (0: automatically set to optimum) [0]"
    k_score: "k-mer threshold for generating similar k-mer lists [2147483647]"
    alph_size: "Alphabet size (range 2-21) [nucl:5,aa:21]"
    max_seqs: "Maximum results per query sequence allowed to pass the prefilter (affects sensitivity) [20]"
    split: "Split input into N equally distributed chunks. 0: set the best split automatically [0]"
    split_mode: "0: split target db; 1: split query db; 2: auto, depending on main memory [2]"
    split_memory_limit: "Set max memory per split. E.g. 800B, 5K, 10M, 1G. Default (0) to all available system memory [0]"
    comp_bias_corr: "Correct for locally biased amino acid composition (range 0-1) [1]"
    diag_score: "Use ungapped diagonal scoring during prefilter [1]"
    exact_km_er_matching: "Extract only exact k-mers for matching (range 0-1) [0]"
    mask: "Mask sequences in k-mer stage: 0: w/o low complexity masking, 1: with low complexity masking [1]"
    mask_lower_case: "Lowercase letters will be excluded from k-mer search 0: include region, 1: exclude region [0]"
    min_un_gapped_score: "Accept only matches with ungapped alignment score above threshold [15]"
    add_self_matches: "Artificially add entries of queries with themselves (for clustering) [0]"
    spaced_km_er_mode: "0: use consecutive positions in k-mers; 1: use spaced k-mers [1]"
    spaced_km_er_pattern: "User-specified spaced k-mer pattern []"
    local_tmp: "Path where some of the temporary files will be created []"
    list_matches_fraction: "List matches above this fraction of aligned (covered) residues (see --cov-mode) [0.800]"
    cov_mode: "0: coverage of query and target\\n1: coverage of target\\n2: coverage of query\\n3: target seq. length has to be at least x% of query length\\n4: query seq. length has to be at least x% of target length\\n5: short seq. needs to be at least x% of the other seq. length [0]"
    add_string_convert: "Add backtrace string (convert to alignments with mmseqs convertalis module) [0]"
    alignment_mode: "How to compute the alignment:\\n0: automatic\\n1: only score and end_pos\\n2: also start_pos and cov\\n3: also seq.id\\n4: only ungapped alignment [3]"
    alignment_output_mode: "How to compute the alignment:\\n0: automatic\\n1: only score and end_pos\\n2: also start_pos and cov\\n3: also seq.id\\n4: only ungapped alignment\\n5: score only (output) cluster format [0]"
    wrapped_scoring: "Double the (nucleotide) query sequence during the scoring process to allow wrapped diagonal scoring around end and start [0]"
    list_matches_evalue: "List matches below this E-value (range 0.0-inf) [1.000E-03]"
    min_seq_id: "List matches above this sequence identity (for clustering) (range 0.0-1.0) [0.000]"
    min_aln_len: "Minimum alignment length (range 0-INT_MAX) [0]"
    seq_id_mode: "0: alignment length 1: shorter, 2: longer sequence [0]"
    alt_ali: "Show up to this many alternative alignments [0]"
    max_rejected: "Maximum rejected alignments before alignment calculation for a query is stopped [2147483647]"
    max_accept: "Maximum accepted alignments before alignment calculation for a query is stopped [2147483647]"
    score_bias: "Score bias when computing SW alignment (in bits) [0.000]"
    realign: "Compute more conservative, shorter alignments (scores and E-values not changed) [0]"
    realign_score_bias: "Additional bias when computing realignment [-0.200]"
    realign_max_seqs: "Maximum number of results to return in realignment [2147483647]"
    gap_open: "Gap open cost [nucl:5,aa:11]"
    gap_extend: "Gap extension cost [nucl:2,aa:1]"
    z_drop: "Maximal allowed difference between score values before alignment is truncated  (nucleotide alignment only) [40]"
    cluster_mode: "0: Set-Cover (greedy)\\n1: Connected component (BLASTclust)\\n2,3: Greedy clustering by sequence length (CDHIT) [0]"
    max_iterations: "Maximum depth of breadth first search in connected component clustering [1000]"
    similarity_type: "Type of score used for clustering. 1: alignment score 2: sequence identity [2]"
    single_step_clustering: "Switch from cascaded to simple clustering workflow [0]"
    cluster_steps: "Cascaded clustering steps from 1 to -s [3]"
    cluster_reassign: "Cascaded clustering can cluster sequence that do not fulfill the clustering criteria.\\nCluster reassignment corrects these errors [0]"
    km_er_per_seq: "k-mers per sequence [21]"
    km_er_per_seq_scale: "Scale k-mer per sequence based on sequence length as kmer-per-seq val + scale x seqlen [nucl:0.200,aa:0.000]"
    adjust_km_er_len: "Adjust k-mer length based on specificity (only for nucleotides) [0]"
    hash_shift: "Shift k-mer hash initialization [67]"
    include_only_extendable: "Include only extendable [0]"
    ignore_multi_km_er: "Skip k-mers occurring multiple times (>=2) [0]"
    pc_a: "Pseudo count admixture strength [1.000]"
    pcb: "Pseudo counts: Neff at half of maximum admixture (range 0.0-inf) [1.500]"
    re_score_mode: "Rescore diagonals with:\\n0: Hamming distance\\n1: local alignment (score only)\\n2: local alignment\\n3: global alignment\\n4: longest alignment fulfilling window quality criterion [0]"
    sub_mat: "Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]"
    max_seq_len: "Maximum sequence length [65535]"
    db_load_mode: "Database preload mode 0: auto, 1: fread, 2: mmap, 3: mmap+touch [0]"
    threads: "Number of CPU-cores used (all by default) [2]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
    remove_tmp_files: "Delete temporary files [0]"
    force_reuse: "Reuse tmp filse in tmp/latest folder ignoring parameters and version changes [0]"
    mpi_runner: "Use MPI on compute cluster with this MPI command (e.g. \\\"mpirun -np 42\\\") []"
    filter_hits: "Filter hits by seq.id. and coverage [0]"
    sort_results: "Sort results: 0: no sorting, 1: sort by E-value (Alignment) or seq.id. (Hamming) [0]"
  }
  output {
    File out_stdout = stdout()
    File out_seed_sub_mat = "${in_seed_sub_mat}"
    File out_sub_mat = "${in_sub_mat}"
  }
}