version 1.0

task Ipcluster {
  command <<<
    ipcluster
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}