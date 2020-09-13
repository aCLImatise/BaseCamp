version 1.0

task MegalodonExtrasCalibrate {
  command <<<
    megalodon_extras calibrate
  >>>
  output {
    File out_stdout = stdout()
  }
}