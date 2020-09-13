version 1.0

task Tspex {
  input {
    Boolean? log
    Boolean? disable_transformation
    Int? threshold
    String input_file
    String formats_dot
    String method
  }
  command <<<
    tspex \
      ~{input_file} \
      ~{formats_dot} \
      ~{method} \
      ~{if (log) then "--log" else ""} \
      ~{if (disable_transformation) then "--disable_transformation" else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""}
  >>>
  parameter_meta {
    log: "Log-transform expression values. (default: False)"
    disable_transformation: "By default, tissue-specificity values are transformed\\nso that they range from 0 (perfectly ubiquitous) to 1\\n(perfectly tissue-specific). If this parameter is\\nused, transformation will be disabled and each metric\\nwill have have a diferent range of possible values.\\n(default: False)"
    threshold: "Threshold to be used with the \\\"counts\\\" metric. If\\nanother method is chosen, this parameter will be\\nignored. (default: 0)\\n"
    input_file: "Expression matrix file in the TSV, CSV or Excel"
    formats_dot: "output_file           Output TSV file containing tissue-specificity values."
    method: "Tissue-specificity metric. Allowed values are:\\n\\\"counts\\\", \\\"tau\\\", \\\"gini\\\", \\\"simpson\\\",\\n\\\"shannon_specificity\\\", \\\"roku_specificity\\\", \\\"tsi\\\",\\n\\\"zscore\\\", \\\"spm\\\", \\\"spm_dpm\\\", \\\"js_specificity\\\",\\n\\\"js_specificity_dpm\\\"."
  }
  output {
    File out_stdout = stdout()
  }
}