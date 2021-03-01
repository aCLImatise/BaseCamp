version 1.0

task RunMIRfixsh {
  command <<<
    runMIRfix_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}