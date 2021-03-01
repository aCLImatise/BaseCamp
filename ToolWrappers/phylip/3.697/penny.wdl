version 1.0

task Penny {
  command <<<
    penny
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}