version 1.0

task SgaGraphconcordance {
  input {
    Boolean? verbose
    File? reference
    Int? threads
    File? germline
  }
  command <<<
    sga graph_concordance \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(germline) then ("--germline " +  '"' + germline + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "display verbose output"
    reference: "load the reference genome from FILE"
    threads: "use NUM threads to compute the overlaps (default: 1)"
    germline: "load germline variants from FILE"
  }
  output {
    File out_stdout = stdout()
  }
}