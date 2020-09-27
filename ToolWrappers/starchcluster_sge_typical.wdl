version 1.0

task StarchclusterSgetypical {
  command <<<
    starchcluster_sge_typical
  >>>
  output {
    File out_stdout = stdout()
  }
}