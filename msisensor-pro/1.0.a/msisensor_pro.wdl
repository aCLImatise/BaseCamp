version 1.0

task Msisensorpro {
  command <<<
    msisensor_pro
  >>>
  output {
    File out_stdout = stdout()
  }
}