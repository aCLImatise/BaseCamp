version 1.0

task ConterminatorProtein {
  input {
    Int? comp_bias_corr
    Boolean? add_self_matches
    String? seed_sub_mat
    Float? sensitivity_faster_fast
    Int? kmer_size_range
    Int? k_score
    Int? alph_size
    Int? split
    Int? split_mode
    String? diag_score
    Int? exact_km_er_matching
    Int? mask
    Int? mask_lower_case
    Int? min_un_gapped_score
    Int? spaced_km_er_mode
    String? spaced_km_er_pattern
    String? local_tmp
    String? disk_space_limit
    Boolean? add_string_convert
    Int? alignment_mode
    Float? list_matches_evalue
    Float? min_seq_id
    Int? min_aln_len
    Int? seq_id_mode
    Int? alt_ali
    Float? list_matches_fraction
    Int? cov_mode
    Boolean? realign
    Int? max_rejected
    Int? max_accept
    Float? score_bias
    Int? gap_open
    Int? gap_extend
    Float? pc_a
    Float? pcb
    Int? mask_profile
    Float? e_profile
    Boolean? wg
    Int? filter_msa
    Float? max_seq_id
    Float? qid
    Float? qsc
    Float? cov
    Int? diff
    Int? num_iterations
    Boolean? slice_search
    String? sub_mat
    Int? max_seq_len
    Int? db_load_mode
    Int? threads
    Int? compressed
    Int? verbosity_level_nothing
    String? split_memory_limit
    String? mpi_runner
    Boolean? force_reuse
    Boolean? filter_hits
    Int? sort_results
    Boolean? omit_consensus
    Int? create_lookup
    Int? chain_alignments
    Int? merge_query
    Int? strand
  }
  command <<<
    conterminator protein \
      ~{if defined(comp_bias_corr) then ("--comp-bias-corr " +  '"' + comp_bias_corr + '"') else ""} \
      ~{true="--add-self-matches" false="" add_self_matches} \
      ~{if defined(seed_sub_mat) then ("--seed-sub-mat " +  '"' + seed_sub_mat + '"') else ""} \
      ~{if defined(sensitivity_faster_fast) then ("-s " +  '"' + sensitivity_faster_fast + '"') else ""} \
      ~{if defined(kmer_size_range) then ("-k " +  '"' + kmer_size_range + '"') else ""} \
      ~{if defined(k_score) then ("--k-score " +  '"' + k_score + '"') else ""} \
      ~{if defined(alph_size) then ("--alph-size " +  '"' + alph_size + '"') else ""} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""} \
      ~{if defined(split_mode) then ("--split-mode " +  '"' + split_mode + '"') else ""} \
      ~{if defined(diag_score) then ("--diag-score " +  '"' + diag_score + '"') else ""} \
      ~{if defined(exact_km_er_matching) then ("--exact-kmer-matching " +  '"' + exact_km_er_matching + '"') else ""} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if defined(mask_lower_case) then ("--mask-lower-case " +  '"' + mask_lower_case + '"') else ""} \
      ~{if defined(min_un_gapped_score) then ("--min-ungapped-score " +  '"' + min_un_gapped_score + '"') else ""} \
      ~{if defined(spaced_km_er_mode) then ("--spaced-kmer-mode " +  '"' + spaced_km_er_mode + '"') else ""} \
      ~{if defined(spaced_km_er_pattern) then ("--spaced-kmer-pattern " +  '"' + spaced_km_er_pattern + '"') else ""} \
      ~{if defined(local_tmp) then ("--local-tmp " +  '"' + local_tmp + '"') else ""} \
      ~{if defined(disk_space_limit) then ("--disk-space-limit " +  '"' + disk_space_limit + '"') else ""} \
      ~{true="-a" false="" add_string_convert} \
      ~{if defined(alignment_mode) then ("--alignment-mode " +  '"' + alignment_mode + '"') else ""} \
      ~{if defined(list_matches_evalue) then ("-e " +  '"' + list_matches_evalue + '"') else ""} \
      ~{if defined(min_seq_id) then ("--min-seq-id " +  '"' + min_seq_id + '"') else ""} \
      ~{if defined(min_aln_len) then ("--min-aln-len " +  '"' + min_aln_len + '"') else ""} \
      ~{if defined(seq_id_mode) then ("--seq-id-mode " +  '"' + seq_id_mode + '"') else ""} \
      ~{if defined(alt_ali) then ("--alt-ali " +  '"' + alt_ali + '"') else ""} \
      ~{if defined(list_matches_fraction) then ("-c " +  '"' + list_matches_fraction + '"') else ""} \
      ~{if defined(cov_mode) then ("--cov-mode " +  '"' + cov_mode + '"') else ""} \
      ~{true="--realign" false="" realign} \
      ~{if defined(max_rejected) then ("--max-rejected " +  '"' + max_rejected + '"') else ""} \
      ~{if defined(max_accept) then ("--max-accept " +  '"' + max_accept + '"') else ""} \
      ~{if defined(score_bias) then ("--score-bias " +  '"' + score_bias + '"') else ""} \
      ~{if defined(gap_open) then ("--gap-open " +  '"' + gap_open + '"') else ""} \
      ~{if defined(gap_extend) then ("--gap-extend " +  '"' + gap_extend + '"') else ""} \
      ~{if defined(pc_a) then ("--pca " +  '"' + pc_a + '"') else ""} \
      ~{if defined(pcb) then ("--pcb " +  '"' + pcb + '"') else ""} \
      ~{if defined(mask_profile) then ("--mask-profile " +  '"' + mask_profile + '"') else ""} \
      ~{if defined(e_profile) then ("--e-profile " +  '"' + e_profile + '"') else ""} \
      ~{true="--wg" false="" wg} \
      ~{if defined(filter_msa) then ("--filter-msa " +  '"' + filter_msa + '"') else ""} \
      ~{if defined(max_seq_id) then ("--max-seq-id " +  '"' + max_seq_id + '"') else ""} \
      ~{if defined(qid) then ("--qid " +  '"' + qid + '"') else ""} \
      ~{if defined(qsc) then ("--qsc " +  '"' + qsc + '"') else ""} \
      ~{if defined(cov) then ("--cov " +  '"' + cov + '"') else ""} \
      ~{if defined(diff) then ("--diff " +  '"' + diff + '"') else ""} \
      ~{if defined(num_iterations) then ("--num-iterations " +  '"' + num_iterations + '"') else ""} \
      ~{true="--slice-search" false="" slice_search} \
      ~{if defined(sub_mat) then ("--sub-mat " +  '"' + sub_mat + '"') else ""} \
      ~{if defined(max_seq_len) then ("--max-seq-len " +  '"' + max_seq_len + '"') else ""} \
      ~{if defined(db_load_mode) then ("--db-load-mode " +  '"' + db_load_mode + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_nothing) then ("-v " +  '"' + verbosity_level_nothing + '"') else ""} \
      ~{if defined(split_memory_limit) then ("--split-memory-limit " +  '"' + split_memory_limit + '"') else ""} \
      ~{if defined(mpi_runner) then ("--mpi-runner " +  '"' + mpi_runner + '"') else ""} \
      ~{true="--force-reuse" false="" force_reuse} \
      ~{true="--filter-hits" false="" filter_hits} \
      ~{if defined(sort_results) then ("--sort-results " +  '"' + sort_results + '"') else ""} \
      ~{true="--omit-consensus" false="" omit_consensus} \
      ~{if defined(create_lookup) then ("--create-lookup " +  '"' + create_lookup + '"') else ""} \
      ~{if defined(chain_alignments) then ("--chain-alignments " +  '"' + chain_alignments + '"') else ""} \
      ~{if defined(merge_query) then ("--merge-query " +  '"' + merge_query + '"') else ""} \
      ~{if defined(strand) then ("--strand " +  '"' + strand + '"') else ""}
  >>>
  parameter_meta {
    comp_bias_corr: "correct for locally biased amino acid composition (range 0-1) [1]"
    add_self_matches: "artificially add entries of queries with themselves (for clustering)"
    seed_sub_mat: "amino acid substitution matrix for kmer generation file [nucl:nucleotide.out,aa:VTML80.out]"
    sensitivity_faster_fast: "sensitivity: 1.0 faster; 4.0 fast default; 7.5 sensitive (range 1.0-7.5) [4.000]"
    kmer_size_range: "k-mer size in the range (0: set automatically to optimum) [0]"
    k_score: "K-mer threshold for generating similar k-mer lists [2147483647]"
    alph_size: "alphabet size (range 2-21) [21]"
    split: "Splits input sets into N equally distributed chunks. The default value sets the best split automatically. createindex can only be used with split 1. [0]"
    split_mode: "0: split target db; 1: split query db;  2: auto, depending on main memory [2]"
    diag_score: "Use ungapped diagonal scoring during prefilter [1, set to 0 to disable]"
    exact_km_er_matching: "only exact k-mer matching (range 0-1) [0]"
    mask: "mask sequences in k-mer stage 0: w/o low complexity masking, 1: with low complexity masking [0]"
    mask_lower_case: "lowercase letters will be excluded from k-mer search 0: include region, 1: exclude region [0]"
    min_un_gapped_score: "accept only matches with ungapped alignment score above this threshold [15]"
    spaced_km_er_mode: "0: use consecutive positions a k-mers; 1: use spaced k-mers [1]"
    spaced_km_er_pattern: "User-specified spaced k-mer pattern []"
    local_tmp: "Path where some of the temporary files will be created []"
    disk_space_limit: "Set max disk space to use for reverse profile searches. E.g. 800B, 5K, 10M, 1G. Defaults (0) to all available disk space in the temp folder. [0]"
    add_string_convert: "add backtrace string (convert to alignments with mmseqs convertalis utility)"
    alignment_mode: "How to compute the alignment: 0: automatic; 1: only score and end_pos; 2: also start_pos and cov; 3: also seq.id; 4: only ungapped alignment [3]"
    list_matches_evalue: "list matches below this E-value (range 0.0-inf) [0.001]"
    min_seq_id: "list matches above this sequence identity (for clustering) (range 0.0-1.0) [0.950]"
    min_aln_len: "minimum alignment length (range 0-INT_MAX) [0]"
    seq_id_mode: "0: alignment length 1: shorter, 2: longer sequence [0]"
    alt_ali: "Show up to this many alternative alignments [0]"
    list_matches_fraction: "list matches above this fraction of aligned (covered) residues (see --cov-mode) [0.950]"
    cov_mode: "0: coverage of query and target, 1: coverage of target, 2: coverage of query 3: target seq. length needs to be at least x% of query length, 4: query seq. length needs to be at least x% of target length 5: short seq. needs to be at least x% of the other seq. length [0]"
    realign: "compute more conservative, shorter alignments (scores and E-values not changed)"
    max_rejected: "maximum rejected alignments before alignment calculation for a query is aborted [2147483647]"
    max_accept: "maximum accepted alignments before alignment calculation for a query is stopped [2147483647]"
    score_bias: "Score bias when computing the SW alignment (in bits) [0.000]"
    gap_open: "Gap open cost [11]"
    gap_extend: "Gap extension cost [1]"
    pc_a: "pseudo count admixture strength [1.000]"
    pcb: "pseudo counts: Neff at half of maximum admixture (range 0.0-inf) [1.500]"
    mask_profile: "mask query sequence of profile using tantan [0,1] [1]"
    e_profile: "includes sequences matches with < e-value thr. into the profile (>=0.0) [0.001]"
    wg: "use global sequence weighting for profile calculation"
    filter_msa: "filter msa: 0: do not filter, 1: filter [1]"
    max_seq_id: "reduce redundancy of output MSA using max. pairwise sequence identity [0.0,1.0] [0.900]"
    qid: "reduce diversity of output MSAs using min.seq. identity with query sequences [0.0,1.0] [0.000]"
    qsc: "reduce diversity of output MSAs using min. score per aligned residue with query sequences [-50.0,100.0] [-20.000]"
    cov: "filter output MSAs using min. fraction of query residues covered by matched sequences [0.0,1.0] [0.000]"
    diff: "filter MSAs by selecting most diverse set of sequences, keeping at least this many seqs in each MSA block of length 50 [1000]"
    num_iterations: "Search iterations [1]"
    slice_search: "For bigger profile DB, run iteratively the search by greedily swapping the search results."
    sub_mat: "amino acid substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]"
    max_seq_len: "maximum sequence length (range 1-32768]) [65535]"
    db_load_mode: "Database preload mode 0: auto, 1: fread, 2: mmap, 3: mmap+touch [0]"
    threads: "number of cores used for the computation (uses all cores by default) [8]"
    compressed: "write results in compressed format [0]"
    verbosity_level_nothing: "verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info [3]"
    split_memory_limit: "Set max memory per split. E.g. 800B, 5K, 10M, 1G. Defaults (0) to all available system memory. [0]"
    mpi_runner: "Use MPI on compute grid with this MPI command (e.g. \"mpirun -np 42\") []"
    force_reuse: "reuse tmp file in tmp/latest folder ignoring parameters and git version change"
    filter_hits: "filter hits by seq.id. and coverage"
    sort_results: "Sort results: 0: no sorting, 1: sort by evalue (Alignment) or seq.id. (Hamming) [0]"
    omit_consensus: "Omit consensus sequence in alignment"
    create_lookup: "Create database lookup file (can be very large) [0]"
    chain_alignments: "Chain overlapping alignments [0]"
    merge_query: "combine ORFs/split sequences to a single entry [1]"
    strand: "Strand selection only works for DNA/DNA search 0: reverse, 1: forward, 2: both [1]"
  }
}