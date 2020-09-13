version 1.0

task CruxStatcolumn {
  input {
    File tsv_file
  }
  command <<<
    crux stat_column \
      ~{tsv_file}
  >>>
  parameter_meta {
    tsv_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}