version 1.0

task Libnetcfg {
  input {
    String? the_configuration
    String? defaults_old_config
    File? specific_file_old
    File? specific_file_new
    String? this_help
  }
  command <<<
    libnetcfg \
      ~{if defined(the_configuration) then ("-c " +  '"' + the_configuration + '"') else ""} \
      ~{if defined(defaults_old_config) then ("-d " +  '"' + defaults_old_config + '"') else ""} \
      ~{if defined(specific_file_old) then ("-i " +  '"' + specific_file_old + '"') else ""} \
      ~{if defined(specific_file_new) then ("-o " +  '"' + specific_file_new + '"') else ""} \
      ~{if defined(this_help) then ("-h " +  '"' + this_help + '"') else ""}
  >>>
  parameter_meta {
    the_configuration: "the configuration"
    defaults_old_config: "defaults from the old config (implies -c, non-interactive)"
    specific_file_old: "a specific file as the old config file"
    specific_file_new: "a specific file as the new config file"
    this_help: "this help"
  }
  output {
    File out_stdout = stdout()
  }
}