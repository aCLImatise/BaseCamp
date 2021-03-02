version 1.0

task Iptest2 {
  command <<<
    iptest2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}