version 1.0

task CruxStatColumn {
  input {
    String tsv_file
    String column_name
  }
  command <<<
    crux stat-column \
      ~{tsv_file} \
      ~{column_name}
  >>>
  parameter_meta {
    tsv_file: ""
    column_name: ""
  }
}