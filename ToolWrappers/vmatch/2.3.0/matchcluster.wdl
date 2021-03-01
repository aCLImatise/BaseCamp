version 1.0

task Matchcluster {
  command <<<
    matchcluster
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}