version 1.0

task FEELncCodpotplbak {
  command <<<
    FEELnc_codpot_pl_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}