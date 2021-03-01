version 1.0

task Joiner {
  command <<<
    Joiner
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}