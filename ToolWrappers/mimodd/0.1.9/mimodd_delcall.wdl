version 1.0

task MimoddDelcall {
  input {
    File? index_files
    File? ofile
    Int? max_cov
    Int? min_size
    Boolean? include_uncovered
    Boolean? group_by_id
    Boolean? verbose
    String information
  }
  command <<<
    mimodd delcall \
      ~{information} \
      ~{if defined(index_files) then ("--index-files " +  '"' + index_files + '"') else ""} \
      ~{if defined(ofile) then ("--ofile " +  '"' + ofile + '"') else ""} \
      ~{if defined(max_cov) then ("--max-cov " +  '"' + max_cov + '"') else ""} \
      ~{if defined(min_size) then ("--min-size " +  '"' + min_size + '"') else ""} \
      ~{if (include_uncovered) then "--include-uncovered" else ""} \
      ~{if (group_by_id) then "--group-by-id" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    index_files: "FILE [INDEX FILE ...]\\npre-computed index files for all input files"
    ofile: "redirect the output to the specified file (default:\\nstdout)"
    max_cov: "THRESHOLD\\nmaximal coverage allowed at any site within an\\nuncovered region (default: 0)"
    min_size: "THRESHOLD\\nminimal size in nts for an uncovered region to be\\nreported (default: 100)"
    include_uncovered: "include uncovered regions in the output that did not\\nget called as deletions"
    group_by_id: "optional flag to control handling of multi-sample\\ninput; if enabled, reads from different read groups\\nwill be treated strictly separate. If turned off, read\\ngroups with identical sample names are used together\\nfor identifying uncovered regions, but are still\\ntreated separately for the prediction of deletions."
    verbose: "verbose output"
    information: "positional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_ofile = "${in_ofile}"
  }
}