version 1.0

task CMVJson {
  input {
    File? input_model_file
    File? output_directory_path
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    CMVJson \
      ~{if defined(input_model_file) then ("--inputmodelfile " +  '"' + input_model_file + '"') else ""} \
      ~{if defined(output_directory_path) then ("--outputdirectorypath " +  '"' + output_directory_path + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    input_model_file: "Path to input"
    output_directory_path: "Path to output directory"
    verbose: "Loud verbosity"
    quiet: "Quiet verbosity"
  }
  output {
    File out_stdout = stdout()
    File out_output_directory_path = "${in_output_directory_path}"
  }
}