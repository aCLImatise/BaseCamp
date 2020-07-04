version 1.0

task CapCMAPCombinereps {
  input {
    String? configuration_file
    String? directory_containing_output
    String? directory_created_combined
  }
  command <<<
    capC-MAP combinereps \
      ~{if defined(configuration_file) then ("-c " +  '"' + configuration_file + '"') else ""} \
      ~{if defined(directory_containing_output) then ("-i " +  '"' + directory_containing_output + '"') else ""} \
      ~{if defined(directory_created_combined) then ("-o " +  '"' + directory_created_combined + '"') else ""}
  >>>
  parameter_meta {
    configuration_file: "configuration file"
    directory_containing_output: "directory containing output from capC-MAP for a replicate (option must appear multiple times)."
    directory_created_combined: "directory to be created for combined output"
  }
}