version 1.0

task AdaModelPredictorR {
  command <<<
    ada_model_predictor_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}