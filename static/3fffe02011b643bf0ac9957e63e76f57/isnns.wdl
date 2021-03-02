version 1.0

task Isnns {
  command <<<
    isnns
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}