version 1.0

task CapCMAPRun {
  input {
    File? configuration_file
    Directory? directory_created_output
  }
  command <<<
    capC_MAP run \
      ~{if defined(configuration_file) then ("-c " +  '"' + configuration_file + '"') else ""} \
      ~{if defined(directory_created_output) then ("-o " +  '"' + directory_created_output + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    configuration_file: "configuration file"
    directory_created_output: "directory to be created for output"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_created_output = "${in_directory_created_output}"
  }
}