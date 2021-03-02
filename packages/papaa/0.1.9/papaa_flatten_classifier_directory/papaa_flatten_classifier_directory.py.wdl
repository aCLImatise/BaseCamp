version 1.0

task PapaaFlattenClassifierDirectorypy {
  input {
    Directory? input_directory
    Directory? output_directory
  }
  command <<<
    papaa_flatten_classifier_directory_py \
      ~{if defined(input_directory) then ("--input-directory " +  '"' + input_directory + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/papaa:0.1.9--0"
  }
  parameter_meta {
    input_directory: "Input Classifier directory"
    output_directory: "Directory to put flattened collection\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}