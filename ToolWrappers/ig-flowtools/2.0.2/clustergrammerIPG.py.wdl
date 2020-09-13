version 1.0

task ClustergrammerIPGpy {
  command <<<
    clustergrammerIPG_py
  >>>
  output {
    File out_stdout = stdout()
  }
}