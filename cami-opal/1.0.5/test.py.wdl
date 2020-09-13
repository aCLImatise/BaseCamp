version 1.0

task Testpy {
  command <<<
    test_py
  >>>
  output {
    File out_stdout = stdout()
  }
}