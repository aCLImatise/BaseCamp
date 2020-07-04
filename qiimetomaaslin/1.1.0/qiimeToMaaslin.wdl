version 1.0

task QiimeToMaaslin.py {
  input {
    Boolean? normalize_data_values
    String? string_representing_missing
    Int? percolumn_quality_control
    String? depth_computed_negativefrom
    Boolean? output_only_leaves
    String? file_sample_ids
    String metadata_dot_txt
  }
  command <<<
    qiimeToMaaslin.py \
      ~{metadata_dot_txt} \
      ~{true="-n" false="" normalize_data_values} \
      ~{if defined(string_representing_missing) then ("-s " +  '"' + string_representing_missing + '"') else ""} \
      ~{if defined(percolumn_quality_control) then ("-m " +  '"' + percolumn_quality_control + '"') else ""} \
      ~{if defined(depth_computed_negativefrom) then ("-t " +  '"' + depth_computed_negativefrom + '"') else ""} \
      ~{true="-l" false="" output_only_leaves} \
      ~{if defined(file_sample_ids) then ("-x " +  '"' + file_sample_ids + '"') else ""}
  >>>
  parameter_meta {
    normalize_data_values: "Don't normalize data values by column sums"
    string_representing_missing: "String representing missing metadata values"
    percolumn_quality_control: "Per-column quality control, minimum fraction of maximum value"
    depth_computed_negativefrom: "Depth of taxonomy to be computed, negative=from right, 0=no change"
    output_only_leaves: "Output only leaves, not complete taxonomy"
    file_sample_ids: "File from which sample IDs to exclude are read"
    metadata_dot_txt: "File from which metadata is read"
  }
}