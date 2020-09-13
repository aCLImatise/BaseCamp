version 1.0

task ClusterSubmitsh {
  command <<<
    cluster_submit_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}