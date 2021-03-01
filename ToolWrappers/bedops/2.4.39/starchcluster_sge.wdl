version 1.0

task StarchclusterSge {
  command <<<
    starchcluster_sge
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}