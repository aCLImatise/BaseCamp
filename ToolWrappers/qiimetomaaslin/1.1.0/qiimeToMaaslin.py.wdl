version 1.0

task QiimeToMaaslinpy {
  input {
    Boolean? normalize_data_values
    String? string_representing_values
    Int? percolumn_quality_control
    File? file_ids_exclude
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
      ~{if defined(string_representing_values) then ("-s " +  '"' + string_representing_values + '"') else ""} \
      ~{if defined(percolumn_quality_control) then ("-m " +  '"' + percolumn_quality_control + '"') else ""} \
      ~{if defined(file_ids_exclude) then ("-x " +  '"' + file_ids_exclude + '"') else ""} \
      ~{if (l) then "-l" else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    normalize_data_values: "Don't normalize data values by column sums"
    string_representing_values: "String representing missing metadata values"
    percolumn_quality_control: "Per-column quality control, minimum fraction of maximum"
    file_ids_exclude: "File from which sample IDs to exclude are read"
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