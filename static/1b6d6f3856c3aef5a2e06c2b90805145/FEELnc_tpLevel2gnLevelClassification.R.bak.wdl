version 1.0

task FEELncTpLevel2gnLevelClassificationRbak {
  command <<<
    FEELnc_tpLevel2gnLevelClassification_R_bak
  >>>
  runtime {
    docker: "quay.io/biocontainers/feelnc:0.2--pl526_0"
  }
  output {
    File out_stdout = stdout()
  }
}