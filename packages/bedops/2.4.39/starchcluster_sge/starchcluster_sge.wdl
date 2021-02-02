version 1.0

task StarchclusterSge {
  command <<<
    starchcluster_sge
  >>>
  output {
    File out_stdout = stdout()
  }
}