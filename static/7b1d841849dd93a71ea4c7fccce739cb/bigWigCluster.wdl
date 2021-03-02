version 1.0

task BigWigCluster {
  command <<<
    bigWigCluster
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}