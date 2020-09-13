version 1.0

task MerfishtoolsMultidiffexp {
  input {
    Float? max_null_cv
    Float? pseudo_counts
    File? cdf
    Int? threads
    Boolean? v
  }
  command <<<
    merfishtools multidiffexp \
      ~{if defined(max_null_cv) then ("--max-null-cv " +  '"' + max_null_cv + '"') else ""} \
      ~{if defined(pseudo_counts) then ("--pseudocounts " +  '"' + pseudo_counts + '"') else ""} \
      ~{if defined(cdf) then ("--cdf " +  '"' + cdf + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (v) then "-V" else ""}
  >>>
  parameter_meta {
    max_null_cv: "Maximum coefficient of variation (CV) considered as no differential expression [0.5]."
    pseudo_counts: "Pseudocounts to add to means before CV calculation [1.0]."
    cdf: "Path to write CDFs of CVs to."
    threads: "Number of threads to use."
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}