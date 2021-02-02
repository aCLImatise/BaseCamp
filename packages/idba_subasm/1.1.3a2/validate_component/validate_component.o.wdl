version 1.0

task ValidateComponento {
  command <<<
    validate_component_o
  >>>
  output {
    File out_stdout = stdout()
  }
}