version 1.0

task Clusterpicker {
  command <<<
    cluster_picker
  >>>
  output {
    File out_stdout = stdout()
  }
}