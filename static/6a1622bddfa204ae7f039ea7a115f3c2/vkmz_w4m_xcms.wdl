version 1.0

task VkmzW4mxcms {
  input {
    Boolean? error
    Boolean? path_xcms_matrix_file
    Boolean? sample_metadata
    Boolean? variable_metadata
    File? specify_output_file
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
    vkmz w4m_xcms \
      ~{var_14} \
      ~{if (error) then "--error" else ""} \
      ~{if (path_xcms_matrix_file) then "--data-matrix" else ""} \
      ~{if (sample_metadata) then "--sample-metadata" else ""} \
      ~{if (variable_metadata) then "--variable-metadata" else ""} \
      ~{if (specify_output_file) then "--output" else ""} \
      ~{if (json) then "--json" else ""} \
      ~{if (sql) then "--sql" else ""} \
      ~{if (metadata) then "--metadata" else ""} \
      ~{if (database) then "--database" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if defined(polarity) then ("--polarity " +  '"' + polarity + '"') else ""} \
      ~{if (neutral) then "--neutral" else ""} \
      ~{if (alternate) then "--alternate" else ""} \
      ~{if (impute_charge) then "--impute-charge" else ""}
  >>>
  parameter_meta {
    error: "[ERROR] --output [OUTPUT] [--json] [--sql]"
    path_xcms_matrix_file: "[DATA_MATRIX], -xd [DATA_MATRIX]\\nPath to XCMS data matrix file"
    sample_metadata: "[SAMPLE_METADATA], -xs [SAMPLE_METADATA]\\nPath to XCMS sample metadata file"
    variable_metadata: "[VARIABLE_METADATA], -xv [VARIABLE_METADATA]\\nPath to XCMS variable metadata file"
    specify_output_file: "[OUTPUT], -o [OUTPUT]\\nSpecify output file path"
    json: "Set JSON flag to save JSON output"
    sql: "Set SQL flag to save SQL output"
    metadata: "Set metadata flag to save argument metadata"
    database: "[DATABASE], -db [DATABASE]\\nDefine path to custom database of known formula-mass\\npairs"
    prefix: "[PREFIX]     Define path prefix to support files (\\\"d3.html\\\" and\\ndatabase directory)"
    polarity: "Set flag to force polarity of all features to positive\\nor negative"
    neutral: "Set flag if input data contains neutral feature mass\\ninstead of mz"
    alternate: "Set flag to keep features with multiple predictions"
    impute_charge: "Set flag to impute \\\"1\\\" for missing charge information\\n"
    var_14: ""
  }
  output {
    File out_stdout = stdout()
    File out_specify_output_file = "${in_specify_output_file}"
  }
}