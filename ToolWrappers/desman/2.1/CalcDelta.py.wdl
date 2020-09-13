version 1.0

task CalcDeltapy {
  command <<<
    CalcDelta_py
  >>>
  output {
    File out_stdout = stdout()
  }
}