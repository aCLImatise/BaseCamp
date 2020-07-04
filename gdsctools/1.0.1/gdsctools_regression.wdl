version 1.0

task GdsctoolsRegression {
  input {
    String? input_ic_five_zero
    String? input_features
    String? input_drug_decode
    String? k_fold
    String? output_directory
    Boolean? verbose
    Boolean? force
    String? method
    Boolean? license
  }
  command <<<
    gdsctools_regression \
      ~{if defined(input_ic_five_zero) then ("--input-ic50 " +  '"' + input_ic_five_zero + '"') else ""} \
      ~{if defined(input_features) then ("--input-features " +  '"' + input_features + '"') else ""} \
      ~{if defined(input_drug_decode) then ("--input-drug-decode " +  '"' + input_drug_decode + '"') else ""} \
      ~{if defined(k_fold) then ("--kfold " +  '"' + k_fold + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--force" false="" force} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{true="--license" false="" license}
  >>>
  parameter_meta {
    input_ic_five_zero: "A file in TSV format with IC50s. First column should be the COSMIC identifiers Following columns contain the IC50s for a set of drugs. The header must be COSMIC_ID, Drug_1_IC50, Drug_2_IC50, ..."
    input_features: "A matrix of genomic features. One column with COSMIC identifiers should match those from the IC50s matrix. Then columns named TISSUE_FACTOR, MSI_FACTOR, MEDIA_FACTOR should be provided. Finally, other columns will be considered as genomic features (e.g., mutation)"
    input_drug_decode: "a decoder file"
    k_fold: "kfold for regression cross validation"
    output_directory: "directory where to save images and HTML files."
    verbose: "verbose option."
    force: "force creation of the directory and overwrite files."
    method: "lasso, elasticnet or ridge"
    license: "Print the current license"
  }
}