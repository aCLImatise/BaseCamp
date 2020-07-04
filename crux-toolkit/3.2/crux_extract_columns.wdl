version 1.0

task CruxExtractColumns {
  input {
    String tsv_file
    String column_names
  }
  command <<<
    crux extract-columns \
      ~{tsv_file} \
      ~{column_names}
  >>>
  parameter_meta {
    tsv_file: ""
    column_names: ""
  }
}