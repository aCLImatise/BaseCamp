version 1.0

task KronosUpdateConfig {
  input {
    File? output_filename
    File paths_config_files
  }
  command <<<
    kronos update_config \
      ~{paths_config_files} \
      ~{if defined(output_filename) then ("--output_filename " +  '"' + output_filename + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_filename: "a name for the output file\\n"
    paths_config_files: "paths to the config files, e.g. update_config\\n<old_config.yaml> <new_config.yaml>"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename = "${in_output_filename}"
  }
}