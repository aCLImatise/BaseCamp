version 1.0

task AdaModelBuilderNtChangeR {
  command <<<
    ada_model_builder_ntChange_R
  >>>
  output {
    File out_stdout = stdout()
  }
}