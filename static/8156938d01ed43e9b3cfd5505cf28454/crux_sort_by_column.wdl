version 1.0

task CruxSortbycolumn {
  input {
    File tsv_file
  }
  command <<<
    crux sort_by_column \
      ~{tsv_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tsv_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}