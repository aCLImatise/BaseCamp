version 1.0

task SbpipeMoveDatasets {
  input {
    String? model_name
    File? input_path
    File? output_path
  }
  command <<<
    sbpipe_move_datasets \
      ~{if defined(model_name) then ("--model-name " +  '"' + model_name + '"') else ""} \
      ~{if defined(input_path) then ("--input-path " +  '"' + input_path + '"') else ""} \
      ~{if defined(output_path) then ("--output-path " +  '"' + output_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    model_name: "the model name without extension"
    input_path: "the path containing the input files"
    output_path: "the path to store the output files"
  }
  output {
    File out_stdout = stdout()
    File out_output_path = "${in_output_path}"
  }
}