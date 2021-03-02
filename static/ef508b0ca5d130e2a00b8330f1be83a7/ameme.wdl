version 1.0

task Ameme {
  command <<<
    ameme
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}