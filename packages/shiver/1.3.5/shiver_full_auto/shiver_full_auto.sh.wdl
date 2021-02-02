version 1.0

task ShiverFullAutosh {
  command <<<
    shiver_full_auto_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}