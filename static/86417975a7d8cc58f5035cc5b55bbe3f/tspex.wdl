version 1.0

task Tspex {
  input {
    Boolean? log
    Boolean? disable_transformation
    String? threshold
    String input_file
    String output_file
    String method
  }
  command <<<
    tspex \
      ~{input_file} \
      ~{output_file} \
      ~{method} \
      ~{true="--log" false="" log} \
      ~{true="--disable_transformation" false="" disable_transformation} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""}
  >>>
  parameter_meta {
    log: "Log-transform expression values. (default: False)"
    disable_transformation: "By default, tissue-specificity values are transformed so that they range from 0 (perfectly ubiquitous) to 1 (perfectly tissue-specific). If this parameter is used, transformation will be disabled and each metric will have have a diferent range of possible values. (default: False)"
    threshold: "Threshold to be used with the \"counts\" metric. If another method is chosen, this parameter will be ignored. (default: 0)"
    input_file: "Expression matrix file in the TSV, CSV or Excel formats."
    output_file: "Output TSV file containing tissue-specificity values."
    method: "Tissue-specificity metric. Allowed values are: \"counts\", \"tau\", \"gini\", \"simpson\", \"shannon_specificity\", \"roku_specificity\", \"tsi\", \"zscore\", \"spm\", \"spm_dpm\", \"js_specificity\", \"js_specificity_dpm\"."
  }
}