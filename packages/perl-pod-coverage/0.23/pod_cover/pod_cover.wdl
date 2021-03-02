version 1.0

task PodCover {
  command <<<
    pod_cover
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}