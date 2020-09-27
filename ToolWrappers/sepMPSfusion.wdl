version 1.0

task SepMPSfusion {
  command <<<
    sepMPSfusion
  >>>
  output {
    File out_stdout = stdout()
  }
}