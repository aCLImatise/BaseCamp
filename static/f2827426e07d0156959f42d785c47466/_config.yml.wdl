version 1.0

task Configyml {
  command <<<
    _config_yml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}