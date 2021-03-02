version 1.0

task Soapsuds {
  command <<<
    soapsuds
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}