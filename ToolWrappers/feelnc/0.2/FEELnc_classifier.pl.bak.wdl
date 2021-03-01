version 1.0

task FEELncClassifierplbak {
  command <<<
    FEELnc_classifier_pl_bak
  >>>
  runtime {
    docker: "quay.io/biocontainers/feelnc:0.2--pl526_0"
  }
  output {
    File out_stdout = stdout()
  }
}