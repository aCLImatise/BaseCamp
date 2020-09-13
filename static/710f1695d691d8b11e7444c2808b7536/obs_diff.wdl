version 1.0

task Obsdiff {
  command <<<
    obs_diff
  >>>
  output {
    File out_stdout = stdout()
  }
}