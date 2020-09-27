version 1.0

task NgsPSMC {
  command <<<
    ngsPSMC
  >>>
  output {
    File out_stdout = stdout()
  }
}