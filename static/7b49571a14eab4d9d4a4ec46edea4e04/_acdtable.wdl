version 1.0

task Acdtable {
  command <<<
    _acdtable
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}