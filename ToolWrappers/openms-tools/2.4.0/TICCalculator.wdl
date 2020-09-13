version 1.0

task TICCalculator {
  command <<<
    TICCalculator
  >>>
  output {
    File out_stdout = stdout()
  }
}