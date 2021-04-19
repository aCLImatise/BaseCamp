version 1.0

task MetagraphProteinAlign {
  input {
    Boolean? header_comment_delim
    Boolean? parallel
    Boolean? map_kmers_graph
    Boolean? compacted
    Boolean? km_er_length
    Boolean? count_km_ers
    Boolean? query_presence
    Boolean? filter_present
    Boolean? batch_size
    File? outfile_base
    Boolean? json
    Boolean? align_both_strands
    Boolean? align_alternative_alignments
    Boolean? align_min_path_score
    Boolean? align_edit_distance
    Boolean? align_max_nodes_per_seq_char
    Boolean? align_max_ram
    Boolean? align_match_score
    Boolean? align_mm_transition_penalty
    Boolean? align_mm_transversion_penalty
    Boolean? align_gap_open_penalty
    Boolean? align_gap_extension_penalty
    Boolean? align_min_cell_score
    Boolean? align_x_drop
    Boolean? align_min_seed_length
    Boolean? align_max_seed_length
    Boolean? align_min_exact_match
    Boolean? align_max_num_seeds_per_locus
    Boolean? verbose
    String? i
    Int fast_q_one
  }
  command <<<
    metagraph_Protein align \
      ~{fast_q_one} \
      ~{if (header_comment_delim) then "--header-comment-delim" else ""} \
      ~{if (parallel) then "--parallel" else ""} \
      ~{if (map_kmers_graph) then "--map" else ""} \
      ~{if (compacted) then "--compacted" else ""} \
      ~{if (km_er_length) then "--kmer-length" else ""} \
      ~{if (count_km_ers) then "--count-kmers" else ""} \
      ~{if (query_presence) then "--query-presence" else ""} \
      ~{if (filter_present) then "--filter-present" else ""} \
      ~{if (batch_size) then "--batch-size" else ""} \
      ~{if (outfile_base) then "--outfile-base" else ""} \
      ~{if (json) then "--json" else ""} \
      ~{if (align_both_strands) then "--align-both-strands" else ""} \
      ~{if (align_alternative_alignments) then "--align-alternative-alignments" else ""} \
      ~{if (align_min_path_score) then "--align-min-path-score" else ""} \
      ~{if (align_edit_distance) then "--align-edit-distance" else ""} \
      ~{if (align_max_nodes_per_seq_char) then "--align-max-nodes-per-seq-char" else ""} \
      ~{if (align_max_ram) then "--align-max-ram" else ""} \
      ~{if (align_match_score) then "--align-match-score" else ""} \
      ~{if (align_mm_transition_penalty) then "--align-mm-transition-penalty" else ""} \
      ~{if (align_mm_transversion_penalty) then "--align-mm-transversion-penalty" else ""} \
      ~{if (align_gap_open_penalty) then "--align-gap-open-penalty" else ""} \
      ~{if (align_gap_extension_penalty) then "--align-gap-extension-penalty" else ""} \
      ~{if (align_min_cell_score) then "--align-min-cell-score" else ""} \
      ~{if (align_x_drop) then "--align-xdrop" else ""} \
      ~{if (align_min_seed_length) then "--align-min-seed-length" else ""} \
      ~{if (align_max_seed_length) then "--align-max-seed-length" else ""} \
      ~{if (align_min_exact_match) then "--align-min-exact-match" else ""} \
      ~{if (align_max_num_seeds_per_locus) then "--align-max-num-seeds-per-locus" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0"
  }
  parameter_meta {
    header_comment_delim: "[STR] delimiter for joining fasta header with comment [off]"
    parallel: "[INT]             use multiple threads for computation [1]"
    map_kmers_graph: "map k-mers to graph exactly instead of aligning.\\nTurned on if --count-kmers or --query-presence are set [off]"
    compacted: "dump the GFA's 'P' lines in a compacted mode [off]"
    km_er_length: "[INT]          length of mapped k-mers (at most graph's k) [k]"
    count_km_ers: "for each sequence, report the number of k-mers discovered in graph [off]"
    query_presence: "test sequences for presence, report as 0 or 1 [off]"
    filter_present: "report only present input sequences as FASTA [off]"
    batch_size: "query batch size (number of base pairs) [100000000]"
    outfile_base: "[STR]                         basename of output file []"
    json: "output alignment in JSON format [off]"
    align_both_strands: "return best alignments for either input sequence or its reverse complement [off]"
    align_alternative_alignments: "the number of alternative paths to report per seed [1]"
    align_min_path_score: "[INT]                 the minimum score that a reported path can have [0]"
    align_edit_distance: "use unit costs for scoring matrix [off]"
    align_max_nodes_per_seq_char: "[FLOAT]       maximum number of nodes to consider per sequence character [12.0]"
    align_max_ram: "[FLOAT]                      maximum amount of RAM used per alignment in MB [200.0]"
    align_match_score: "[INT]                    positive match score [2]"
    align_mm_transition_penalty: "[INT]          positive transition penalty (DNA only) [3]"
    align_mm_transversion_penalty: "[INT]        positive transversion penalty (DNA only) [3]"
    align_gap_open_penalty: "[INT]               positive gap opening penalty [5]"
    align_gap_extension_penalty: "[INT]          positive gap extension penalty [2]"
    align_min_cell_score: "[INT]                 the minimum value that a cell in the alignment table can hold [0]"
    align_x_drop: "[INT]                          the maximum difference between the current and the best alignment [27]"
    align_min_seed_length: "[INT]                the minimum length of a seed [graph k]"
    align_max_seed_length: "[INT]                the maximum length of a seed [graph k]"
    align_min_exact_match: "[FLOAT]              fraction of matching nucleotides required to align sequence [0.7]"
    align_max_num_seeds_per_locus: "[INT]        the maximum number of allowed inexact seeds per locus [inf]"
    verbose: "switch on verbose output [off]"
    i: ""
    fast_q_one: ""
  }
  output {
    File out_stdout = stdout()
    File out_outfile_base = "${in_outfile_base}"
  }
}