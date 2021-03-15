version 1.0

task MetagraphDNATransformAnno {
  input {
    Boolean? rename_cols
    Boolean? an_no_type
    Boolean? in_file_base
    Boolean? arity
    Boolean? greedy
    Boolean? linkage
    Boolean? linkage_file
    Boolean? subsample
    Boolean? fast
    Boolean? dump_text_an_no
    Boolean? disk_swap
    Boolean? parallel
    Boolean? parallel_nodes
    Boolean? max_path_length
    Boolean? optimize
    Boolean? verbose
    String? o
    String annotator
  }
  command <<<
    metagraph_DNA transform_anno \
      ~{annotator} \
      ~{if (rename_cols) then "--rename-cols" else ""} \
      ~{if (an_no_type) then "--anno-type" else ""} \
      ~{if (in_file_base) then "--infile-base" else ""} \
      ~{if (arity) then "--arity" else ""} \
      ~{if (greedy) then "--greedy" else ""} \
      ~{if (linkage) then "--linkage" else ""} \
      ~{if (linkage_file) then "--linkage-file" else ""} \
      ~{if (subsample) then "--subsample" else ""} \
      ~{if (fast) then "--fast" else ""} \
      ~{if (dump_text_an_no) then "--dump-text-anno" else ""} \
      ~{if (disk_swap) then "--disk-swap" else ""} \
      ~{if (parallel) then "--parallel" else ""} \
      ~{if (parallel_nodes) then "--parallel-nodes" else ""} \
      ~{if (max_path_length) then "--max-path-length" else ""} \
      ~{if (optimize) then "--optimize" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metagraph:0.1.0--hcb16fcb_0"
  }
  parameter_meta {
    rename_cols: "[STR]  file with rules for renaming annotation labels []\\nexample: 'L_1 L_1_renamed\\nL_2 L_2_renamed\\nL_2 L_2_renamed\\n... ...........'"
    an_no_type: "[STR]    target annotation format [column]\\n( column, brwt, rb_brwt,\\nrow_diff, row_diff_brwt, row_diff_sparse,\\nrow, flat, rbfish, bin_rel_wt, bin_rel_wt_sdsl )"
    in_file_base: "[STR]  graph for generating succ/pred/anchors (for row_diff types) []"
    arity: "arity in the brwt tree [2]"
    greedy: "use greedy column partitioning in brwt construction [off]"
    linkage: "cluster columns and construct linkage matrix [off]"
    linkage_file: "[STR] linkage matrix specifying brwt tree structure []\\nexample: '0 1 <dist> 4\\n2 3 <dist> 5\\n4 5 <dist> 6'"
    subsample: "[INT]    number of rows subsampled for distance estimation in column clustering [1000000]"
    fast: "transform annotation in memory without streaming [off]"
    dump_text_an_no: "dump the columns of the annotator as separate text files [off]"
    disk_swap: "[STR]    directory for temporary files [OUT_BASEDIR]"
    parallel: "[INT]     use multiple threads for computation [1]"
    parallel_nodes: "[INT]       number of nodes processed in parallel in brwt tree [n_threads]"
    max_path_length: "[INT]      maximum path length in row_diff annotation [50]"
    optimize: "optimize anchors in row_diff annotation [off]"
    verbose: "switch on verbose output [off]"
    o: ""
    annotator: ""
  }
  output {
    File out_stdout = stdout()
  }
}