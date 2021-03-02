version 1.0

task StarchclusterSgefloat128 {
  command <<<
    starchcluster_sge_float128
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}