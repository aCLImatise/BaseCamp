version 1.0

task PodCover {
  command <<<
    pod_cover
  >>>
  output {
    File out_stdout = stdout()
  }
}