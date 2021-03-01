version 1.0

task Patmatdb {
  command <<<
    patmatdb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}