version 1.0

task Iptest {
  command <<<
    iptest
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}