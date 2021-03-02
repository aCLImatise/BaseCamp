version 1.0

task SomaticXgboostpy {
  command <<<
    somatic_xgboost_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/somaticseq:3.6.2--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}