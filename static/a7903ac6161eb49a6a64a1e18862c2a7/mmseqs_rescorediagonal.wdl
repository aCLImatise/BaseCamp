version 1.0

task MmseqsRescorediagonal {
  input {
    Boolean? add_self_matches
    Boolean? wrapped_scoring
    Float? list_matches_evalue
    Float? list_matches_fraction
    Boolean? add_string_convert
    Int? cov_mode
    Float? min_seq_id
    Int? min_aln_len
    Int? seq_id_mode
    Int? re_score_mode
    File? sub_mat
    Int? db_load_mode
    Int? threads
    Int? compressed
    Int? verbosity_level_errors
    Boolean? filter_hits
    Int? sort_results
  }
  command <<<
    mmseqs rescorediagonal \
      ~{if defined(add_self_matches) then ("--add-self-matches " +  '"' + add_self_matches + '"') else ""} \
      ~{if defined(wrapped_scoring) then ("--wrapped-scoring " +  '"' + wrapped_scoring + '"') else ""} \
      ~{if defined(list_matches_evalue) then ("-e " +  '"' + list_matches_evalue + '"') else ""} \
      ~{if defined(list_matches_fraction) then ("-c " +  '"' + list_matches_fraction + '"') else ""} \
      ~{if defined(add_string_convert) then ("-a " +  '"' + add_string_convert + '"') else ""} \
      ~{if defined(cov_mode) then ("--cov-mode " +  '"' + cov_mode + '"') else ""} \
      ~{if defined(min_seq_id) then ("--min-seq-id " +  '"' + min_seq_id + '"') else ""} \
      ~{if defined(min_aln_len) then ("--min-aln-len " +  '"' + min_aln_len + '"') else ""} \
      ~{if defined(seq_id_mode) then ("--seq-id-mode " +  '"' + seq_id_mode + '"') else ""} \
      ~{if defined(re_score_mode) then ("--rescore-mode " +  '"' + re_score_mode + '"') else ""} \
      ~{if defined(sub_mat) then ("--sub-mat " +  '"' + sub_mat + '"') else ""} \
      ~{if defined(db_load_mode) then ("--db-load-mode " +  '"' + db_load_mode + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""} \
      ~{if defined(filter_hits) then ("--filter-hits " +  '"' + filter_hits + '"') else ""} \
      ~{if defined(sort_results) then ("--sort-results " +  '"' + sort_results + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    add_self_matches: "Artificially add entries of queries with themselves (for clustering) [0]"
    wrapped_scoring: "Double the (nucleotide) query sequence during the scoring process to allow wrapped diagonal scoring around end and start [0]"
    list_matches_evalue: "List matches below this E-value (range 0.0-inf) [1.000E-03]"
    list_matches_fraction: "List matches above this fraction of aligned (covered) residues (see --cov-mode) [0.000]"
    add_string_convert: "Add backtrace string (convert to alignments with mmseqs convertalis module) [0]"
    cov_mode: "0: coverage of query and target\\n1: coverage of target\\n2: coverage of query\\n3: target seq. length has to be at least x% of query length\\n4: query seq. length has to be at least x% of target length\\n5: short seq. needs to be at least x% of the other seq. length [0]"
    min_seq_id: "List matches above this sequence identity (for clustering) (range 0.0-1.0) [0.000]"
    min_aln_len: "Minimum alignment length (range 0-INT_MAX) [0]"
    seq_id_mode: "0: alignment length 1: shorter, 2: longer sequence [0]"
    re_score_mode: "Rescore diagonals with:\\n0: Hamming distance\\n1: local alignment (score only)\\n2: local alignment\\n3: global alignment\\n4: longest alignment fulfilling window quality criterion [0]"
    sub_mat: "Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]"
    db_load_mode: "Database preload mode 0: auto, 1: fread, 2: mmap, 3: mmap+touch [0]"
    threads: "Number of CPU-cores used (all by default) [2]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
    filter_hits: "Filter hits by seq.id. and coverage [0]"
    sort_results: "Sort results: 0: no sorting, 1: sort by E-value (Alignment) or seq.id. (Hamming) [0]"
  }
  output {
    File out_stdout = stdout()
    File out_sub_mat = "${in_sub_mat}"
  }
}