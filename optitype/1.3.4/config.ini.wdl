version 1.0

task Configini {
  command <<<
    config_ini
  >>>
  output {
    File out_stdout = stdout()
  }
}