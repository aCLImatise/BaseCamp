version 1.0

task Mconfig {
  input {
    File? config
    String? target
    String var_command
    String? command_parameters
  }
  command <<<
    mconfig \
      ~{var_command} \
      ~{command_parameters} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""}
  >>>
  parameter_meta {
    config: "Read the specified config file in addition to\\nthe standard ones. Settings in this file override ones\\nin the other files."
    target: "Use this target when executing 'command'"
    var_command: ""
    command_parameters: ""
  }
  output {
    File out_stdout = stdout()
  }
}