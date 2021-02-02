version 1.0

task QiimeToMaaslinpy {
  input {
    Boolean? normalize_data_values
    String? string_representing_missing
    Int? percolumn_control_fraction
    File? file_sample_ids
    Boolean? l
    String? t
    String metadata_dot_txt
    String value
    String change
  }
  command <<<
    qiimeToMaaslin_py \
      ~{metadata_dot_txt} \
      ~{value} \
      ~{change} \
      ~{if (normalize_data_values) then "-n" else ""} \
      ~{if defined(string_representing_missing) then ("-s " +  '"' + string_representing_missing + '"') else ""} \
      ~{if defined(percolumn_control_fraction) then ("-m " +  '"' + percolumn_control_fraction + '"') else ""} \
      ~{if defined(file_sample_ids) then ("-x " +  '"' + file_sample_ids + '"') else ""} \
      ~{if (l) then "-l" else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    normalize_data_values: "Don't normalize data values by column sums"
    string_representing_missing: "String representing missing metadata values"
    percolumn_control_fraction: "Per-column quality control, minimum fraction of maximum"
    file_sample_ids: "File from which sample IDs to exclude are read"
    l: ""
    t: ""
    metadata_dot_txt: "File from which metadata is read"
    value: "-t taxa         Depth of taxonomy to be computed, negative=from right, 0=no"
    change: "-l              Output only leaves, not complete taxonomy"
  }
  output {
    File out_stdout = stdout()
  }
}