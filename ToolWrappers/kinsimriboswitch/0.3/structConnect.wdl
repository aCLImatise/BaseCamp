version 1.0

task StructConnect {
  command <<<
    structConnect
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}