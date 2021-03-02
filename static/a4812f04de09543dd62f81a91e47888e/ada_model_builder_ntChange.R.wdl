version 1.0

task AdaModelBuilderNtChangeR {
  command <<<
    ada_model_builder_ntChange_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/somaticseq:3.6.2--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}