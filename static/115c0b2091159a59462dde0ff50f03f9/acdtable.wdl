version 1.0

task Acdtable {
  command <<<
    acdtable
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}