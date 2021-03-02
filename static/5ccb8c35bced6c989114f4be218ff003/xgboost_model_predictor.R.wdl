version 1.0

task XgboostModelPredictorR {
  command <<<
    xgboost_model_predictor_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}