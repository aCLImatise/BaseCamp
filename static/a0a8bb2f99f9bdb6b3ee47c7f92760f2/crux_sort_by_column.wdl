version 1.0

task CruxSortByColumn {
  input {
    String tsv_file
    String column_name
  }
  command <<<
    crux sort-by-column \
      ~{tsv_file} \
      ~{column_name}
  >>>
  parameter_meta {
    tsv_file: ""
    column_name: ""
  }
}