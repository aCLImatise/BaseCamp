version 1.0

task Ssumask {
  command <<<
    _ssu_mask
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}