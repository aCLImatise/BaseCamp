version 1.0

task Testpy {
  command <<<
    test_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}