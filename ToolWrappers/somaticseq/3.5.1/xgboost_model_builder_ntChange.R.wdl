version 1.0

task XgboostModelBuilderNtChangeR {
  command <<<
    xgboost_model_builder_ntChange_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}