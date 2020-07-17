version 1.0

task PyqiMakeOptparse {
  input {
    String? an_existing_command
    String? command_module
    String? output_fp
  }
  command <<<
    pyqi make-optparse \
      ~{if defined(an_existing_command) then ("--command " +  '"' + an_existing_command + '"') else ""} \
      ~{if defined(command_module) then ("--command-module " +  '"' + command_module + '"') else ""} \
      ~{if defined(output_fp) then ("--output-fp " +  '"' + output_fp + '"') else ""}
  >>>
  parameter_meta {
    an_existing_command: "an existing Command [REQUIRED]"
    command_module: "the Command source module [REQUIRED]"
    output_fp: "output filepath to store generated optparse Python configuration file [REQUIRED]"
  }
}