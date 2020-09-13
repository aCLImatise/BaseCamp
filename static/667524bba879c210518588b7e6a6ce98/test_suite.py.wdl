version 1.0

task TestSuitepy {
  command <<<
    test_suite_py
  >>>
  output {
    File out_stdout = stdout()
  }
}