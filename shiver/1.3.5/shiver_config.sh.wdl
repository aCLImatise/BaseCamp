version 1.0

task ShiverConfigsh {
  command <<<
    shiver_config_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}