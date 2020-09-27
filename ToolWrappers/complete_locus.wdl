version 1.0

task CompleteLocus {
  input {
    File? path_input_file
    Directory? input_directory
    Directory? output_directory
    Boolean? suppress_warnings
  }
  command <<<
    complete_locus \
      ~{if defined(path_input_file) then ("--input " +  '"' + path_input_file + '"') else ""} \
      ~{if defined(input_directory) then ("--input-directory " +  '"' + input_directory + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(suppress_warnings) then ("--suppress-warnings " +  '"' + suppress_warnings + '"') else ""}
  >>>
  parameter_meta {
    path_input_file: "Path to input locus file"
    input_directory: "Path to directory containing locus files"
    output_directory: "Path to output directory"
    suppress_warnings: "Suppress warnings"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}