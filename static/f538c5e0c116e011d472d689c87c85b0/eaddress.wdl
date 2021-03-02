version 1.0

task Eaddress {
  command <<<
    eaddress
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}