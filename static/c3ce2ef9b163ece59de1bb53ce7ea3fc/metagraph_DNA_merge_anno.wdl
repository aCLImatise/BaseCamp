version 1.0

task MetagraphDNAMergeAnno {
  input {
    Boolean? an_no_type
    Boolean? parallel
    Boolean? verbose
    String? o
    Int an_not_one
  }
  command <<<
    metagraph_DNA merge_anno \
      ~{an_not_one} \
      ~{if (an_no_type) then "--anno-type" else ""} \
      ~{if (parallel) then "--parallel" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metagraph:0.1.0--hcb16fcb_0"
  }
  parameter_meta {
    an_no_type: "[STR]    target annotation representation [column]\\n( column, brwt, rb_brwt,\\nrow_diff, row_diff_brwt, row_diff_sparse,\\nrow, flat, rbfish, bin_rel_wt, bin_rel_wt_sdsl )"
    parallel: "[INT]     use multiple threads for computation [1]"
    verbose: "switch on verbose output [off]"
    o: ""
    an_not_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}