version 1.0

task DiaUmpireQuant {
  command <<<
    dia_umpire_quant
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}