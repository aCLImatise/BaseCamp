version 1.0

task Mbbsfinder {
  input {
    String? threshold
    Int? min_cov
    String? reference
    String? mutation
    Boolean? verbose
  }
  command <<<
    mb_bsfinder \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(min_cov) then ("--mincov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(mutation) then ("--mutation " +  '"' + mutation + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    threshold: "set maximum p-value for site selection"
    min_cov: "set minimum coverage"
    reference: "set default reference nucleotide"
    mutation: "set default mutation nucleotide"
    verbose: "verbose output"
  }
  output {
    File out_stdout = stdout()
  }
}