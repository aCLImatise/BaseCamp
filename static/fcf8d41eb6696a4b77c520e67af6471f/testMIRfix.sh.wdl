version 1.0

task TestMIRfixsh {
  command <<<
    testMIRfix_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}