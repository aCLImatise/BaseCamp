version 1.0

task Bincalculatorr {
  command <<<
    bincalculator_r
  >>>
  output {
    File out_stdout = stdout()
  }
}