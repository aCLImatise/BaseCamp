version 1.0

task SvmTrain {
  input {
    String training_set_file
    String? model_file
  }
  command <<<
    svm-train \
      ~{training_set_file} \
      ~{model_file}
  >>>
  parameter_meta {
    training_set_file: ""
    model_file: ""
  }
}