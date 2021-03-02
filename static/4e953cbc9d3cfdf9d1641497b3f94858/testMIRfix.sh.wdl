version 1.0

task TestMIRfixsh {
  command <<<
    testMIRfix_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}