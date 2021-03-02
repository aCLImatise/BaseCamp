version 1.0

task ModelEstimate {
  input {
    File? positive_input_file
    File? negative_input_file
    File? model_file
    File? output_dir
    Boolean? cross_validation
  }
  command <<<
    model estimate \
      ~{if defined(positive_input_file) then ("--positive-input-file " +  '"' + positive_input_file + '"') else ""} \
      ~{if defined(negative_input_file) then ("--negative-input-file " +  '"' + negative_input_file + '"') else ""} \
      ~{if defined(model_file) then ("--model-file " +  '"' + model_file + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if (cross_validation) then "--cross-validation" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    positive_input_file: "Path tofile containing input for the positive class.\\n(default: None)"
    negative_input_file: "Path to file containing input for the negative class.\\n(default: None)"
    model_file: "Path to a fit model file. (default: None)"
    output_dir: "Path to output directory. (default: out)"
    cross_validation: "If set, report cross validated performance measures.\\nThe model's parameters are re-trained in each fold\\nkeeping the hyper-parameters of the given model.\\n(default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
  }
}