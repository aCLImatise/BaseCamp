version 1.0

task Ipcontroller2 {
  command <<<
    ipcontroller2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}