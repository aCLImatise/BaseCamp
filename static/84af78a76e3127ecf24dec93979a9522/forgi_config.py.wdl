version 1.0

task ForgiConfigpy {
  command <<<
    forgi_config_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}