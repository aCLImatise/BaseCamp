version 1.0

task Svmpredict {
  input {
    Int? predict_probability_estimates
    Boolean? quiet_mode_outputs
    String test_file
    String model_file
    String output_file
  }
  command <<<
    svm_predict \
      ~{test_file} \
      ~{model_file} \
      ~{output_file} \
      ~{if defined(predict_probability_estimates) then ("-b " +  '"' + predict_probability_estimates + '"') else ""} \
      ~{if (quiet_mode_outputs) then "-q" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    predict_probability_estimates: ": whether to predict probability estimates, 0 or 1 (default 0); for one-class SVM only 0 is supported"
    quiet_mode_outputs: ": quiet mode (no outputs)"
    test_file: ""
    model_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}