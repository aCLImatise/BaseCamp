version 1.0

task VkmzTabular {
  input {
    File? path_tabular_file
    Boolean? mass_error_ms
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
    String? var_12
    String? var_13
  }
  command <<<
    vkmz tabular \
      ~{var_12} \
      ~{var_13} \
      ~{if defined(path_tabular_file) then ("--input " +  '"' + path_tabular_file + '"') else ""} \
      ~{if (mass_error_ms) then "--error" else ""} \
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
    path_tabular_file: "Path to tabular file."
    mass_error_ms: "[ERROR], -e [ERROR]\\nMass error of MS data in parts-per-million"
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
    var_12: ""
    var_13: ""
  }
  output {
    File out_stdout = stdout()
    File out_specify_output_file = "${in_specify_output_file}"
  }
}