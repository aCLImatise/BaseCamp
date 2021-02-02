version 1.0

task Configsh {
  command <<<
    config_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}