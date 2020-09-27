version 1.0

task KronosUpdateConfig {
  input {
    File? output_filename
    File file
  }
  command <<<
    kronos update_config \
      ~{file} \
      ~{if defined(output_filename) then ("--output_filename " +  '"' + output_filename + '"') else ""}
  >>>
  parameter_meta {
    output_filename: "a name for the output file\\n"
    file: "paths to the config files, e.g. update_config\\n<old_config.yaml> <new_config.yaml>"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename = "${in_output_filename}"
  }
}