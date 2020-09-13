version 1.0

task XgboostModelPredictorR {
  command <<<
    xgboost_model_predictor_R
  >>>
  output {
    File out_stdout = stdout()
  }
}