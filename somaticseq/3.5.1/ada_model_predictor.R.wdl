version 1.0

task AdaModelPredictorR {
  command <<<
    ada_model_predictor_R
  >>>
  output {
    File out_stdout = stdout()
  }
}