version 1.0

task ClusterPicker {
  command <<<
    ClusterPicker
  >>>
  output {
    File out_stdout = stdout()
  }
}