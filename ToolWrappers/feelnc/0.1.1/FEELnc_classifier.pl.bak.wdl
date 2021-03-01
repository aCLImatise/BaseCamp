version 1.0

task FEELncClassifierplbak {
  command <<<
    FEELnc_classifier_pl_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}