version 1.0

task CruxExtractrows {
  input {
    File tsv_file
    String column_name
  }
  command <<<
    crux extract_rows \
      ~{tsv_file} \
      ~{column_name}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tsv_file: ""
    column_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}