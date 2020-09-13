version 1.0

task Testyaml {
  command <<<
    test_yaml
  >>>
  output {
    File out_stdout = stdout()
  }
}