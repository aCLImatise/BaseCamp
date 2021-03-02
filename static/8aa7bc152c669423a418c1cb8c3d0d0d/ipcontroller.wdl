version 1.0

task Ipcontroller {
  command <<<
    ipcontroller
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}