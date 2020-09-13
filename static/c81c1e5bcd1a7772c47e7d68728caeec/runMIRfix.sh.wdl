version 1.0

task RunMIRfixsh {
  command <<<
    runMIRfix_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}