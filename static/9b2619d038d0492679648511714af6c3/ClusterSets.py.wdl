version 1.0

task ClusterSetspy {
  command <<<
    ClusterSets_py
  >>>
  output {
    File out_stdout = stdout()
  }
}