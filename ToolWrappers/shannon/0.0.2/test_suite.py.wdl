version 1.0

task TestSuitepy {
  command <<<
    test_suite_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}