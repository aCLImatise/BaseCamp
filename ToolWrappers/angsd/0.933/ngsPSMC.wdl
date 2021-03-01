version 1.0

task NgsPSMC {
  command <<<
    ngsPSMC
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}