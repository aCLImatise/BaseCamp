version 1.0

task MerfishtoolsDiffexp {
  input {
    Float? max_null_log_two_fc
    Float? pseudo_counts
    File? cdf
    Int? threads
    Int group_one
  }
  command <<<
    merfishtools diffexp \
      ~{group_one} \
      ~{if defined(max_null_log_two_fc) then ("--max-null-log2fc " +  '"' + max_null_log_two_fc + '"') else ""} \
      ~{if defined(pseudo_counts) then ("--pseudocounts " +  '"' + pseudo_counts + '"') else ""} \
      ~{if defined(cdf) then ("--cdf " +  '"' + cdf + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    max_null_log_two_fc: "Maximum absolute log2 fold change considered as no differential expression [1.0]."
    pseudo_counts: "Pseudocounts to add to means before fold change calculation [1.0]."
    cdf: "Path to write CDFs of log2 fold changes to."
    threads: "Number of threads to use."
    group_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}