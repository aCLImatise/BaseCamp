version 1.0

task PyqiMakebashcompletion {
  input {
    String? command_config_module
    String? driver_name
    File? output_fp
  }
  command <<<
    pyqi make_bash_completion \
      ~{if defined(command_config_module) then ("--command-config-module " +  '"' + command_config_module + '"') else ""} \
      ~{if defined(driver_name) then ("--driver-name " +  '"' + driver_name + '"') else ""} \
      ~{if defined(output_fp) then ("--output-fp " +  '"' + output_fp + '"') else ""}
  >>>
  parameter_meta {
    command_config_module: "CLI command configuration module [REQUIRED]"
    driver_name: "name of the driver script [REQUIRED]"
    output_fp: "output filepath [REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_fp = "${in_output_fp}"
  }
}