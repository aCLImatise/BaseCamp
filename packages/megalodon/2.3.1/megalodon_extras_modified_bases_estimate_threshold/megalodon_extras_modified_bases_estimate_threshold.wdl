version 1.0

task MegalodonExtrasModifiedBasesEstimateThreshold {
  input {
    String? fraction_modified
    Int? mod_percentile
    Int? num_statistics
    String output_dot
  }
  command <<<
    megalodon_extras modified_bases estimate_threshold \
      ~{output_dot} \
      ~{if defined(fraction_modified) then ("--fraction-modified " +  '"' + fraction_modified + '"') else ""} \
      ~{if defined(mod_percentile) then ("--mod-percentile " +  '"' + mod_percentile + '"') else ""} \
      ~{if defined(num_statistics) then ("--num-statistics " +  '"' + num_statistics + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/megalodon:2.3.1--py38h4a8c8d9_0"
  }
  parameter_meta {
    fraction_modified: "Specify fraction of modified calls. Default: Use\\n--mod-percentile most extreme scores to estimate the\\nfraction."
    mod_percentile: "Percentile of extreme scores to determine fraction of\\nmodified bases. Default: 8"
    num_statistics: "Number of per-read statistics to use in estimation.\\nDefault: All statistics\\n"
    output_dot: "mod_base              Single letter code for the modified base."
  }
  output {
    File out_stdout = stdout()
  }
}