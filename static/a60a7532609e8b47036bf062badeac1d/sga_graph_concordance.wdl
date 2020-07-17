version 1.0

task SgaGraphConcordance {
  input {
    Boolean? verbose
    String? reference
    String? threads
    File? germline
    String? option
  }
  command <<<
    sga graph-concordance \
      ~{option} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(germline) then ("--germline " +  '"' + germline + '"') else ""}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    reference: "load the reference genome from FILE"
    threads: "use NUM threads to compute the overlaps (default: 1)"
    germline: "load germline variants from FILE"
    option: ""
  }
}