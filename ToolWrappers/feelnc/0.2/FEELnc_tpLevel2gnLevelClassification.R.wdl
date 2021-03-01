version 1.0

task FEELncTpLevel2gnLevelClassificationR {
  command <<<
    FEELnc_tpLevel2gnLevelClassification_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/feelnc:0.2--pl526_0"
  }
  output {
    File out_stdout = stdout()
  }
}