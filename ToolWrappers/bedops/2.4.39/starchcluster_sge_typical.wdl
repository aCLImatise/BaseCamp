version 1.0

task StarchclusterSgetypical {
  command <<<
    starchcluster_sge_typical
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}