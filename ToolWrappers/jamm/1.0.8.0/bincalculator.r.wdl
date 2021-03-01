version 1.0

task Bincalculatorr {
  command <<<
    bincalculator_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}