version 1.0

task CapCMAPRun {
  input {
    String? configuration_file
    String? directory_created_output
  }
  command <<<
    capC-MAP run \
      ~{if defined(configuration_file) then ("-c " +  '"' + configuration_file + '"') else ""} \
      ~{if defined(directory_created_output) then ("-o " +  '"' + directory_created_output + '"') else ""}
  >>>
  parameter_meta {
    configuration_file: "configuration file"
    directory_created_output: "directory to be created for output"
  }
}