version 1.0

task FEELncCodpotplbak {
  command <<<
    FEELnc_codpot_pl_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}