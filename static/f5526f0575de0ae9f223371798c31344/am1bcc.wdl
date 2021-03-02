version 1.0

task Am1bcc {
  command <<<
    am1bcc
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}