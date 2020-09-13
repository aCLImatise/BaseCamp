version 1.0

task Configyml {
  command <<<
    _config_yml
  >>>
  output {
    File out_stdout = stdout()
  }
}