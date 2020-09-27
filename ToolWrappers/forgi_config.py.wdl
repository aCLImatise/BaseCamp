version 1.0

task ForgiConfigpy {
  command <<<
    forgi_config_py
  >>>
  output {
    File out_stdout = stdout()
  }
}