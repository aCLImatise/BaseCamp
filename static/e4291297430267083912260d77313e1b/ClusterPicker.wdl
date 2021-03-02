version 1.0

task ClusterPicker {
  command <<<
    ClusterPicker
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}