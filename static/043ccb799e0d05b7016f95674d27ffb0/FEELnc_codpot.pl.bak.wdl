version 1.0

task FEELncCodpotplbak {
  command <<<
    FEELnc_codpot_pl_bak
  >>>
  runtime {
    docker: "quay.io/biocontainers/feelnc:0.2--pl526_0"
  }
  output {
    File out_stdout = stdout()
  }
}