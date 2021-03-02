version 1.0

task Exonerateserver {
  command <<<
    exonerate_server
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}