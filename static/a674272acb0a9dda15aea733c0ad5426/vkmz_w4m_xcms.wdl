version 1.0

task VkmzW4mXcms {
  input {
    Boolean? path_xcms_matrix_file
    Boolean? sample_metadata
    Boolean? variable_metadata
    Boolean? error
    Boolean? specify_output_file
    Boolean? json
    Boolean? sql
    Boolean? metadata
    Boolean? database
    Boolean? prefix
    String? polarity
    Boolean? neutral
    Boolean? alternate
    Boolean? impute_charge
    String? var_14
  }
  command <<<
    vkmz w4m-xcms \
      ~{var_14} \
      ~{true="--data-matrix" false="" path_xcms_matrix_file} \
      ~{true="--sample-metadata" false="" sample_metadata} \
      ~{true="--variable-metadata" false="" variable_metadata} \
      ~{true="--error" false="" error} \
      ~{true="--output" false="" specify_output_file} \
      ~{true="--json" false="" json} \
      ~{true="--sql" false="" sql} \
      ~{true="--metadata" false="" metadata} \
      ~{true="--database" false="" database} \
      ~{true="--prefix" false="" prefix} \
      ~{if defined(polarity) then ("--polarity " +  '"' + polarity + '"') else ""} \
      ~{true="--neutral" false="" neutral} \
      ~{true="--alternate" false="" alternate} \
      ~{true="--impute-charge" false="" impute_charge}
  >>>
  parameter_meta {
    path_xcms_matrix_file: "[DATA_MATRIX], -xd [DATA_MATRIX] Path to XCMS data matrix file"
    sample_metadata: "[SAMPLE_METADATA], -xs [SAMPLE_METADATA] Path to XCMS sample metadata file"
    variable_metadata: "[VARIABLE_METADATA], -xv [VARIABLE_METADATA] Path to XCMS variable metadata file"
    error: "[ERROR], -e [ERROR] Mass error of MS data in parts-per-million"
    specify_output_file: "[OUTPUT], -o [OUTPUT] Specify output file path"
    json: "Set JSON flag to save JSON output"
    sql: "Set SQL flag to save SQL output"
    metadata: "Set metadata flag to save argument metadata"
    database: "[DATABASE], -db [DATABASE] Define path to custom database of known formula-mass pairs"
    prefix: "[PREFIX]     Define path prefix to support files (\"d3.html\" and database directory)"
    polarity: "Set flag to force polarity of all features to positive or negative"
    neutral: "Set flag if input data contains neutral feature mass instead of mz"
    alternate: "Set flag to keep features with multiple predictions"
    impute_charge: "Set flag to impute \"1\" for missing charge information"
    var_14: ""
  }
}