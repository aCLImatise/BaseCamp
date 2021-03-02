version 1.0

task Checkmodel {
  input {
    File? file_contains_model
    File? model_file
  }
  command <<<
    checkmodel \
      ~{if defined(file_contains_model) then ("-i " +  '"' + file_contains_model + '"') else ""} \
      ~{if defined(model_file) then ("-model_file " +  '"' + model_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_contains_model: ", while file contains a MODEL, or"
    model_file: ", where file contains any model structure, or"
  }
  output {
    File out_stdout = stdout()
  }
}