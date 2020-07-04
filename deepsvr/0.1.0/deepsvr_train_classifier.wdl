version 1.0

task DeepsvrTrainClassifier {
  input {
    String? training_file_path
    String? label_file_path
    String? model_out_file_path
    String? weights_out_file_path
  }
  command <<<
    deepsvr train-classifier \
      ~{if defined(training_file_path) then ("--training-file-path " +  '"' + training_file_path + '"') else ""} \
      ~{if defined(label_file_path) then ("--label-file-path " +  '"' + label_file_path + '"') else ""} \
      ~{if defined(model_out_file_path) then ("--model-out-file-path " +  '"' + model_out_file_path + '"') else ""} \
      ~{if defined(weights_out_file_path) then ("--weights-out-file-path " +  '"' + weights_out_file_path + '"') else ""}
  >>>
  parameter_meta {
    training_file_path: "Specify the pickle file produced by the 'prepare_data' command to be used to train a new classifier."
    label_file_path: "Specify the label (manual review call) pickle file produced by the 'prepare_data' command to be used to train a new classifier."
    model_out_file_path: "Specify output file path for model json file(default:./deepsvr_model.json)"
    weights_out_file_path: "Specify output file path for model weights file(default:data/deepsvr_model_weights.h5)"
  }
}