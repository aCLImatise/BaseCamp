version 1.0

task SvmPredict {
  input {
    String test_file
    String model_file
    String output_file
  }
  command <<<
    svm-predict \
      ~{test_file} \
      ~{model_file} \
      ~{output_file}
  >>>
  parameter_meta {
    test_file: ""
    model_file: ""
    output_file: ""
  }
}