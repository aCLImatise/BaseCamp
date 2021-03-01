version 1.0

task CalcDivergenceFromAlignpl {
  command <<<
    calcDivergenceFromAlign_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}