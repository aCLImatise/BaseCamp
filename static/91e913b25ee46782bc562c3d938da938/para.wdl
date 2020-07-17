version 1.0

task Para {
  input {
    String? verbose
    String var_command
    String? command_specific
    String? arguments
  }
  command <<<
    para \
      ~{var_command} \
      ~{command_specific} \
      ~{arguments} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    verbose: "- set verbosity level."
    var_command: ""
    command_specific: ""
    arguments: ""
  }
}