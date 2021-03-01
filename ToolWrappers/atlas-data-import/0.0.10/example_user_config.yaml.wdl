version 1.0

task ExampleUserConfigyaml {
  command <<<
    example_user_config_yaml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}