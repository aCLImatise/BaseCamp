version 1.0

task RunPreClusterpy {
  command <<<
    run_preCluster_py
  >>>
  output {
    File out_stdout = stdout()
  }
}