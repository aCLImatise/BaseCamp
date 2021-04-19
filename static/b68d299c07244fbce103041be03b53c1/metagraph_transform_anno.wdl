version 1.0

task MetagraphTransformAnno {
  input {
    Boolean? intersect_columns
    Boolean? intersect_ratio
    Boolean? rename_cols
    Boolean? an_no_type
    Boolean? arity
    Boolean? greedy
    Boolean? linkage
    Boolean? linkage_file
    Boolean? fast
    Boolean? subsample
    Boolean? dump_text_an_no
    Boolean? row_diff_stage
    Boolean? max_path_length
    Boolean? in_file_base
    Boolean? parallel_nodes
    Boolean? disk_swap
    Boolean? parallel
    Boolean? verbose
    String? o
    String annotator
  }
  command <<<
    metagraph transform_anno \
      ~{annotator} \
      ~{if (intersect_columns) then "--intersect-columns" else ""} \
      ~{if (intersect_ratio) then "--intersect-ratio" else ""} \
      ~{if (rename_cols) then "--rename-cols" else ""} \
      ~{if (an_no_type) then "--anno-type" else ""} \
      ~{if (arity) then "--arity" else ""} \
      ~{if (greedy) then "--greedy" else ""} \
      ~{if (linkage) then "--linkage" else ""} \
      ~{if (linkage_file) then "--linkage-file" else ""} \
      ~{if (fast) then "--fast" else ""} \
      ~{if (subsample) then "--subsample" else ""} \
      ~{if (dump_text_an_no) then "--dump-text-anno" else ""} \
      ~{if (row_diff_stage) then "--row-diff-stage" else ""} \
      ~{if (max_path_length) then "--max-path-length" else ""} \
      ~{if (in_file_base) then "--infile-base" else ""} \
      ~{if (parallel_nodes) then "--parallel-nodes" else ""} \
      ~{if (disk_swap) then "--disk-swap" else ""} \
      ~{if (parallel) then "--parallel" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metagraph:0.2.0--h74b8f77_0"
  }
  parameter_meta {
    intersect_columns: "compute intersection of the annotation columns [off]"
    intersect_ratio: "[FLOAT]    include k-mer if it appears in this ratio of columns [1.0]"
    rename_cols: "[STR]  file with rules for renaming annotation labels []\\nexample: 'L_1 L_1_renamed\\nL_2 L_2_renamed\\nL_2 L_2_renamed\\n... ...........'"
    an_no_type: "[STR]    target annotation format [column]\\n( column, brwt, rb_brwt,\\nrow_diff, row_diff_brwt, row_diff_sparse,\\nrow, flat, rbfish, bin_rel_wt, bin_rel_wt_sdsl )"
    arity: "arity in the brwt tree [2]"
    greedy: "use greedy column partitioning in brwt construction [off]"
    linkage: "cluster columns and construct linkage matrix [off]"
    linkage_file: "[STR] linkage matrix specifying brwt tree structure []\\nexample: '0 1 <dist> 4\\n2 3 <dist> 5\\n4 5 <dist> 6'"
    fast: "transform annotation in memory without streaming / sparse subsampling [off]"
    subsample: "[INT]    number of rows subsampled for distance estimation in column clustering [1000000]"
    dump_text_an_no: "dump the columns of the annotator as separate text files [off]"
    row_diff_stage: "[0|1|2]     stage of the row_diff construction [0]"
    max_path_length: "[INT]      maximum path length in row_diff annotation [100]"
    in_file_base: "[STR]          graph for generating succ/pred/anchors (for row_diff types) []"
    parallel_nodes: "[INT]       number of nodes processed in parallel in brwt tree [n_threads]"
    disk_swap: "[STR]    directory for temporary files [OUT_BASEDIR]"
    parallel: "[INT]     use multiple threads for computation [1]"
    verbose: "switch on verbose output [off]"
    o: ""
    annotator: ""
  }
  output {
    File out_stdout = stdout()
  }
}