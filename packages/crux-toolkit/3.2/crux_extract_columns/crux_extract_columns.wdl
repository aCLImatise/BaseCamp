version 1.0

task CruxExtractcolumns {
  input {
    File tsv_file
  }
  command <<<
    crux extract_columns \
      ~{tsv_file}
  >>>
  parameter_meta {
    tsv_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}