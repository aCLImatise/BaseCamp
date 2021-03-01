version 1.0

task ClusterSubmitsh {
  command <<<
    cluster_submit_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}