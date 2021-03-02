version 1.0

task StarchclusterSgemegarow {
  command <<<
    starchcluster_sge_megarow
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}