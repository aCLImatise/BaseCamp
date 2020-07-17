version 1.0

task ModelEstimate {
  input {
    String? positive_input_file
    String? negative_input_file
    String? model_file
    String? output_dir
    Boolean? cross_validation
  }
  command <<<
    model estimate \
      ~{if defined(positive_input_file) then ("--positive-input-file " +  '"' + positive_input_file + '"') else ""} \
      ~{if defined(negative_input_file) then ("--negative-input-file " +  '"' + negative_input_file + '"') else ""} \
      ~{if defined(model_file) then ("--model-file " +  '"' + model_file + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{true="--cross-validation" false="" cross_validation}
  >>>
  parameter_meta {
    positive_input_file: "Path tofile containing input for the positive class. (default: None)"
    negative_input_file: "Path to file containing input for the negative class. (default: None)"
    model_file: "Path to a fit model file. (default: None)"
    output_dir: "Path to output directory. (default: out)"
    cross_validation: "If set, report cross validated performance measures. The model's parameters are re-trained in each fold keeping the hyper-parameters of the given model. (default: False)"
  }
}