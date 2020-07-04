version 1.0

task PyqiMakeBashCompletion {
  input {
    String? command_config_module
    String? driver_name
    String? output_fp
  }
  command <<<
    pyqi make-bash-completion \
      ~{if defined(command_config_module) then ("--command-config-module " +  '"' + command_config_module + '"') else ""} \
      ~{if defined(driver_name) then ("--driver-name " +  '"' + driver_name + '"') else ""} \
      ~{if defined(output_fp) then ("--output-fp " +  '"' + output_fp + '"') else ""}
  >>>
  parameter_meta {
    command_config_module: "CLI command configuration module [REQUIRED]"
    driver_name: "name of the driver script [REQUIRED]"
    output_fp: "output filepath [REQUIRED]"
  }
}