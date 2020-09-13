version 1.0

task Obsprint {
  command <<<
    obs_print
  >>>
  output {
    File out_stdout = stdout()
  }
}