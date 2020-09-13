version 1.0

task Matchcluster {
  command <<<
    matchcluster
  >>>
  output {
    File out_stdout = stdout()
  }
}