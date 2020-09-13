version 1.0

task ExampleModlamppy {
  command <<<
    example_modlamp_py
  >>>
  output {
    File out_stdout = stdout()
  }
}