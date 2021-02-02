version 1.0

task CalcDivergenceFromAlignpl {
  command <<<
    calcDivergenceFromAlign_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}