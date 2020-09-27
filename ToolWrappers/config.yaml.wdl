version 1.0

task Configyaml {
  command <<<
    config_yaml
  >>>
  output {
    File out_stdout = stdout()
  }
}