version 1.0

task Testerpy {
  command <<<
    tester_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}