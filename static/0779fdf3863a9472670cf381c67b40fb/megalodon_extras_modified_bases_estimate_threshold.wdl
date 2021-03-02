version 1.0

task MegalodonExtrasModifiedBasesEstimateThreshold {
  input {
    String? fraction_modified
    Int? mod_percentile
    Int? num_positions
    String output_dot
  }
  command <<<
    megalodon_extras modified_bases estimate_threshold \
      ~{output_dot} \
      ~{if defined(fraction_modified) then ("--fraction-modified " +  '"' + fraction_modified + '"') else ""} \
      ~{if defined(mod_percentile) then ("--mod-percentile " +  '"' + mod_percentile + '"') else ""} \
      ~{if defined(num_positions) then ("--num-positions " +  '"' + num_positions + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fraction_modified: "Specify fraction of modified calls. Default: Use\\n--mod-percentile most extreme scores to estimate the\\nfraction."
    mod_percentile: "Percentile of extreme scores to determine fraction of\\nmodified bases. Default: 8"
    num_positions: "Number of positions from which to select statistics.\\nDefault: All positions\\n"
    output_dot: "mod_base              Single letter code for the modified base."
  }
  output {
    File out_stdout = stdout()
  }
}