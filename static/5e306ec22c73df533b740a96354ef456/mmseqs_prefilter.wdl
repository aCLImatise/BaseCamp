version 1.0

task MmseqsPrefilter {
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
    Float? pc_a
    Float? pcb
    File? sub_mat
    Int? max_seq_len
    Int? db_load_mode
    Int? threads
    Int? compressed
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs prefilter \
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
      ~{if defined(pc_a) then ("--pca " +  '"' + pc_a + '"') else ""} \
      ~{if defined(pcb) then ("--pcb " +  '"' + pcb + '"') else ""} \
      ~{if defined(sub_mat) then ("--sub-mat " +  '"' + sub_mat + '"') else ""} \
      ~{if defined(max_seq_len) then ("--max-seq-len " +  '"' + max_seq_len + '"') else ""} \
      ~{if defined(db_load_mode) then ("--db-load-mode " +  '"' + db_load_mode + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
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
    max_seqs: "Maximum results per query sequence allowed to pass the prefilter (affects sensitivity) [300]"
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
    list_matches_fraction: "List matches above this fraction of aligned (covered) residues (see --cov-mode) [0.000]"
    cov_mode: "0: coverage of query and target\\n1: coverage of target\\n2: coverage of query\\n3: target seq. length has to be at least x% of query length\\n4: query seq. length has to be at least x% of target length\\n5: short seq. needs to be at least x% of the other seq. length [0]"
    pc_a: "Pseudo count admixture strength [1.000]"
    pcb: "Pseudo counts: Neff at half of maximum admixture (range 0.0-inf) [1.500]"
    sub_mat: "Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]"
    max_seq_len: "Maximum sequence length [65535]"
    db_load_mode: "Database preload mode 0: auto, 1: fread, 2: mmap, 3: mmap+touch [0]"
    threads: "Number of CPU-cores used (all by default) [2]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
    File out_seed_sub_mat = "${in_seed_sub_mat}"
    File out_sub_mat = "${in_sub_mat}"
  }
}