version 1.0

task BigWigCluster {
  command <<<
    bigWigCluster
  >>>
  output {
    File out_stdout = stdout()
  }
}