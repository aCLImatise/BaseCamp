version 1.0

task ExampleUserConfigyaml {
  command <<<
    example_user_config_yaml
  >>>
  output {
    File out_stdout = stdout()
  }
}