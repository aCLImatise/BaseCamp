version 1.0

task GarnettTrainClassifier.R {
  input {
    String? output_path
  }
  command <<<
    garnett_train_classifier.R \
      ~{if defined(output_path) then ("--output-path " +  '"' + output_path + '"') else ""}
  >>>
  parameter_meta {
    output_path: "Path to the output file"
  }
}