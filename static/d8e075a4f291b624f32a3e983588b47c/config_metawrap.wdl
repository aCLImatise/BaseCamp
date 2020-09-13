version 1.0

task Configmetawrap {
  command <<<
    config_metawrap
  >>>
  output {
    File out_stdout = stdout()
  }
}