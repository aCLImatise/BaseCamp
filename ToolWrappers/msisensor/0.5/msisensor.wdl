version 1.0

task Msisensor {
  command <<<
    msisensor
  >>>
  output {
    File out_stdout = stdout()
  }
}