version 1.0

task Netlearn {
  command <<<
    netlearn
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}