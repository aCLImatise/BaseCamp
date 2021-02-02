version 1.0

task SierrapyIntrospection {
  input {
    File? file_path_store
    Boolean? ugly
  }
  command <<<
    sierrapy introspection \
      ~{if defined(file_path_store) then ("--output " +  '"' + file_path_store + '"') else ""} \
      ~{if (ugly) then "--ugly" else ""}
  >>>
  parameter_meta {
    file_path_store: "File path to store the JSON result."
    ugly: "Output compressed JSON result."
  }
  output {
    File out_stdout = stdout()
  }
}