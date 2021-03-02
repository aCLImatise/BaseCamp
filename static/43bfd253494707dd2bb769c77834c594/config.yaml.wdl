version 1.0

task Configyaml {
  command <<<
    config_yaml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}