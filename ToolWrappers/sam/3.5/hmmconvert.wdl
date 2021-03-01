version 1.0

task Hmmconvert {
  input {
    File? model_file
    Int? binary_output
    String? option
    String run_name
  }
  command <<<
    hmmconvert \
      ~{run_name} \
      ~{if defined(model_file) then ("-model_file " +  '"' + model_file + '"') else ""} \
      ~{if defined(binary_output) then ("-binary_output " +  '"' + binary_output + '"') else ""} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    model_file: "model file"
    binary_output: "target format ASCII/BINARY"
    option: ""
    run_name: "required"
  }
  output {
    File out_stdout = stdout()
  }
}