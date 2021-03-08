version 1.0

task MmseqsAlignbykmer {
  input {
    Int? kmer_length_set
    Int? spaced_km_er_mode
    String? spaced_km_er_pattern
    Int? alph_size
    Boolean? add_self_matches
    Float? list_matches_fraction
    Float? list_matches_evalue
    Int? cov_mode
    Float? min_seq_id
    Int? min_aln_len
    Int? gap_open
    Int? gap_extend
    File? sub_mat
    Int? threads
    Int? compressed
    Int? verbosity_level_errors
    Boolean? filter_hits
  }
  command <<<
    mmseqs alignbykmer \
      ~{if defined(kmer_length_set) then ("-k " +  '"' + kmer_length_set + '"') else ""} \
      ~{if defined(spaced_km_er_mode) then ("--spaced-kmer-mode " +  '"' + spaced_km_er_mode + '"') else ""} \
      ~{if defined(spaced_km_er_pattern) then ("--spaced-kmer-pattern " +  '"' + spaced_km_er_pattern + '"') else ""} \
      ~{if defined(alph_size) then ("--alph-size " +  '"' + alph_size + '"') else ""} \
      ~{if defined(add_self_matches) then ("--add-self-matches " +  '"' + add_self_matches + '"') else ""} \
      ~{if defined(list_matches_fraction) then ("-c " +  '"' + list_matches_fraction + '"') else ""} \
      ~{if defined(list_matches_evalue) then ("-e " +  '"' + list_matches_evalue + '"') else ""} \
      ~{if defined(cov_mode) then ("--cov-mode " +  '"' + cov_mode + '"') else ""} \
      ~{if defined(min_seq_id) then ("--min-seq-id " +  '"' + min_seq_id + '"') else ""} \
      ~{if defined(min_aln_len) then ("--min-aln-len " +  '"' + min_aln_len + '"') else ""} \
      ~{if defined(gap_open) then ("--gap-open " +  '"' + gap_open + '"') else ""} \
      ~{if defined(gap_extend) then ("--gap-extend " +  '"' + gap_extend + '"') else ""} \
      ~{if defined(sub_mat) then ("--sub-mat " +  '"' + sub_mat + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""} \
      ~{if defined(filter_hits) then ("--filter-hits " +  '"' + filter_hits + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    kmer_length_set: "k-mer length (0: automatically set to optimum) [0]"
    spaced_km_er_mode: "0: use consecutive positions in k-mers; 1: use spaced k-mers [1]"
    spaced_km_er_pattern: "User-specified spaced k-mer pattern []"
    alph_size: "Alphabet size (range 2-21) [nucl:5,aa:21]"
    add_self_matches: "Artificially add entries of queries with themselves (for clustering) [0]"
    list_matches_fraction: "List matches above this fraction of aligned (covered) residues (see --cov-mode) [0.000]"
    list_matches_evalue: "List matches below this E-value (range 0.0-inf) [1.000E-03]"
    cov_mode: "0: coverage of query and target\\n1: coverage of target\\n2: coverage of query\\n3: target seq. length has to be at least x% of query length\\n4: query seq. length has to be at least x% of target length\\n5: short seq. needs to be at least x% of the other seq. length [0]"
    min_seq_id: "List matches above this sequence identity (for clustering) (range 0.0-1.0) [0.000]"
    min_aln_len: "Minimum alignment length (range 0-INT_MAX) [0]"
    gap_open: "Gap open cost [nucl:5,aa:11]"
    gap_extend: "Gap extension cost [nucl:2,aa:1]"
    sub_mat: "Substitution matrix file [nucl:nucleotide.out,aa:blosum62.out]"
    threads: "Number of CPU-cores used (all by default) [2]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
    filter_hits: "Filter hits by seq.id. and coverage [0]"
  }
  output {
    File out_stdout = stdout()
    File out_sub_mat = "${in_sub_mat}"
  }
}