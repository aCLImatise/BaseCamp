version 1.0

task Testerpy {
  command <<<
    tester_py
  >>>
  output {
    File out_stdout = stdout()
  }
}