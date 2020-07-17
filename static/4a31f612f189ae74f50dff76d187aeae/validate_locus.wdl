version 1.0

task ValidateLocus {
  input {
    File? path_input_file
    Directory? input_directory
  }
  command <<<
    validate_locus \
      ~{if defined(path_input_file) then ("--input " +  '"' + path_input_file + '"') else ""} \
      ~{if defined(input_directory) then ("--input-directory " +  '"' + input_directory + '"') else ""}
  >>>
  parameter_meta {
    path_input_file: "Path to input locus file"
    input_directory: "Path to directory containing locus files"
  }
}