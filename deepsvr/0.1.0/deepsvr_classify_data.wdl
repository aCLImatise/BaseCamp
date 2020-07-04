version 1.0

task DeepsvrClassifyData {
  input {
    String? prepared_data_path
    String? model_file_path
    String? model_weights_path
    String? predictions_out_path
  }
  command <<<
    deepsvr classify-data \
      ~{if defined(prepared_data_path) then ("--prepared-data-path " +  '"' + prepared_data_path + '"') else ""} \
      ~{if defined(model_file_path) then ("--model-file-path " +  '"' + model_file_path + '"') else ""} \
      ~{if defined(model_weights_path) then ("--model-weights-path " +  '"' + model_weights_path + '"') else ""} \
      ~{if defined(predictions_out_path) then ("--predictions-out-path " +  '"' + predictions_out_path + '"') else ""}
  >>>
  parameter_meta {
    prepared_data_path: "Specify the 'train.pkl' file produced by the 'prepare_data' to perform inference on. Ignore the call.pkl used in training classifiers"
    model_file_path: "Specify the file path for the model json file. Created by the train_classifier command."
    model_weights_path: "Specify the file path for the model weights file. Created by the train_classifier command."
    predictions_out_path: "Specify the file path for the predictions tab separated file."
  }
}