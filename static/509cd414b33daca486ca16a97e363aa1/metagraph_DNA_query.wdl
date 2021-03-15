version 1.0

task MetagraphDNAQuery {
  input {
    Boolean? fwd_and_reverse
    Boolean? align
    Boolean? sparse
    Boolean? count_labels
    Boolean? print_signature
    Boolean? num_top_labels
    Boolean? discovery_fraction
    Boolean? labels_delimiter
    Boolean? suppress_unlabeled
    Boolean? parallel
    Boolean? fast
    Boolean? batch_size
    Boolean? align_both_strands
    Boolean? align_min_path_score
    Boolean? align_edit_distance
    Boolean? align_max_nodes_per_seq_char
    Boolean? align_max_ram
    Boolean? batch_align
    Boolean? max_hull_forks
    Boolean? max_hull_depth
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
    String? a
    String? i
    Int file_one
  }
  command <<<
    metagraph_DNA query \
      ~{file_one} \
      ~{if (fwd_and_reverse) then "--fwd-and-reverse" else ""} \
      ~{if (align) then "--align" else ""} \
      ~{if (sparse) then "--sparse" else ""} \
      ~{if (count_labels) then "--count-labels" else ""} \
      ~{if (print_signature) then "--print-signature" else ""} \
      ~{if (num_top_labels) then "--num-top-labels" else ""} \
      ~{if (discovery_fraction) then "--discovery-fraction" else ""} \
      ~{if (labels_delimiter) then "--labels-delimiter" else ""} \
      ~{if (suppress_unlabeled) then "--suppress-unlabeled" else ""} \
      ~{if (parallel) then "--parallel" else ""} \
      ~{if (fast) then "--fast" else ""} \
      ~{if (batch_size) then "--batch-size" else ""} \
      ~{if (align_both_strands) then "--align-both-strands" else ""} \
      ~{if (align_min_path_score) then "--align-min-path-score" else ""} \
      ~{if (align_edit_distance) then "--align-edit-distance" else ""} \
      ~{if (align_max_nodes_per_seq_char) then "--align-max-nodes-per-seq-char" else ""} \
      ~{if (align_max_ram) then "--align-max-ram" else ""} \
      ~{if (batch_align) then "--batch-align" else ""} \
      ~{if (max_hull_forks) then "--max-hull-forks" else ""} \
      ~{if (max_hull_depth) then "--max-hull-depth" else ""} \
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
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metagraph:0.1.0--hcb16fcb_0"
  }
  parameter_meta {
    fwd_and_reverse: "for each input sequence, query its reverse complement as well [off]"
    align: "align sequences instead of mapping k-mers [off]"
    sparse: "use row-major sparse matrix for row annotation [off]"
    count_labels: "count labels for k-mers from querying sequences [off]"
    print_signature: "print vectors indicating present/absent k-mers [off]"
    num_top_labels: "maximum number of frequent labels to print [off]"
    discovery_fraction: "[FLOAT] fraction of labeled k-mers required for annotation [0.7]"
    labels_delimiter: "[STR]     delimiter for annotation labels [\\\":\\\"]"
    suppress_unlabeled: "do not show results for sequences missing in graph [off]"
    parallel: "[INT]     use multiple threads for computation [1]"
    fast: "query in batches [off]"
    batch_size: "query batch size (number of base pairs) [100000000]"
    align_both_strands: "return best alignments for either input sequence or its reverse complement [off]"
    align_min_path_score: "[INT]                 the minimum score that a reported path can have [0]"
    align_edit_distance: "use unit costs for scoring matrix [off]"
    align_max_nodes_per_seq_char: "[FLOAT]       maximum number of nodes to consider per sequence character [12.0]"
    align_max_ram: "[FLOAT]              maximum amount of RAM used per alignment in MB [200.0]"
    batch_align: "align against query graph [off]"
    max_hull_forks: "[INT]       maximum number of forks to take when expanding query graph [4]"
    max_hull_depth: "[INT]       maximum number of steps to traverse when expanding query graph [max_nodes_per_seq_char * max_seq_len]"
    align_match_score: "[INT]                    positive match score [2]"
    align_mm_transition_penalty: "[INT]          positive transition penalty (DNA only) [3]"
    align_mm_transversion_penalty: "[INT]        positive transversion penalty (DNA only) [3]"
    align_gap_open_penalty: "[INT]               positive gap opening penalty [5]"
    align_gap_extension_penalty: "[INT]          positive gap extension penalty [2]"
    align_min_cell_score: "[INT]                 the minimum value that a cell in the alignment table can hold [0]"
    align_x_drop: "[INT]                          the maximum difference between the current and the best alignment [27]"
    align_min_seed_length: "[INT]                the minimum length of a seed [graph k]"
    align_max_seed_length: "[INT]                the maximum length of a seed [graph k]"
    align_min_exact_match: "[FLOAT] fraction of matching nucleotides required to align sequence [0.7]"
    align_max_num_seeds_per_locus: "[INT]        the maximum number of allowed inexact seeds per locus [inf]"
    verbose: "switch on verbose output [off]"
    a: ""
    i: ""
    file_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}