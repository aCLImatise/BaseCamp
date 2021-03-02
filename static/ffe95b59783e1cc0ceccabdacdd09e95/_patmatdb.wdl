version 1.0

task Patmatdb {
  command <<<
    _patmatdb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}