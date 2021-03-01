version 1.0

task Clusterpicker {
  command <<<
    cluster_picker
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}