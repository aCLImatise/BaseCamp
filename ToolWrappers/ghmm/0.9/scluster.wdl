version 1.0

task Scluster {
  command <<<
    scluster
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}