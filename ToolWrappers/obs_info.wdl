version 1.0

task Obsinfo {
  command <<<
    obs_info
  >>>
  output {
    File out_stdout = stdout()
  }
}