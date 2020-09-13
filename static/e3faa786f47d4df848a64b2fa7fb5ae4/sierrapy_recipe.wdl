version 1.0

task SierrapyRecipe {
  input {
    File? json_result_sierra
    File? file_path_store
  }
  command <<<
    sierrapy recipe \
      ~{if defined(json_result_sierra) then ("--input " +  '"' + json_result_sierra + '"') else ""} \
      ~{if defined(file_path_store) then ("--output " +  '"' + file_path_store + '"') else ""}
  >>>
  parameter_meta {
    json_result_sierra: "JSON result from Sierra web service."
    file_path_store: "File path to store the result."
  }
  output {
    File out_stdout = stdout()
  }
}