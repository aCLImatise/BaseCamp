version 1.0

task Obsdiff {
  command <<<
    obs_diff
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}