version 1.0

task PrettyTablepy {
  command <<<
    pretty_table_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}