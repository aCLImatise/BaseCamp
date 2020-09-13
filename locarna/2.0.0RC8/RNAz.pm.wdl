version 1.0

task RNAzpm {
  command <<<
    RNAz_pm
  >>>
  output {
    File out_stdout = stdout()
  }
}