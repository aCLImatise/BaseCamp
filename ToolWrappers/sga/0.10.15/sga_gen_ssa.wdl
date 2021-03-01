version 1.0

task SgaGenssa {
  input {
    Boolean? verbose
    Int? threads
    Boolean? check
    Boolean? sai_only
  }
  command <<<
    sga gen_ssa \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (check) then "--check" else ""} \
      ~{if (sai_only) then "--sai-only" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "display verbose output"
    threads: "use NUM threads to construct the index (default: 1)"
    check: "validate that the suffix array/bwt is correct"
    sai_only: "only build the lexicographic index"
  }
  output {
    File out_stdout = stdout()
  }
}