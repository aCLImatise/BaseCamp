version 1.0

task WbCommand {
  input {
    Boolean? arguments_help
    Boolean? global_options
    Boolean? parallel_help
    Boolean? cif_ti_help
    Boolean? gift_i_help
    Boolean? volume_help
    Boolean? version
    Boolean? list_commands
    Boolean? list_deprecated_commands
    Boolean? all_commands_help
    String linux
  }
  command <<<
    wb_command \
      ~{linux} \
      ~{if (arguments_help) then "-arguments-help" else ""} \
      ~{if (global_options) then "-global-options" else ""} \
      ~{if (parallel_help) then "-parallel-help" else ""} \
      ~{if (cif_ti_help) then "-cifti-help" else ""} \
      ~{if (gift_i_help) then "-gifti-help" else ""} \
      ~{if (volume_help) then "-volume-help" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if (list_commands) then "-list-commands" else ""} \
      ~{if (list_deprecated_commands) then "-list-deprecated-commands" else ""} \
      ~{if (all_commands_help) then "-all-commands-help" else ""}
  >>>
  parameter_meta {
    arguments_help: "explain the format of subcommand help info"
    global_options: "display options that can be added to any command"
    parallel_help: "details on how wb_command uses parallelization"
    cif_ti_help: "explain the cifti file format and related terms"
    gift_i_help: "explain the gifti file format (metric, surface)"
    volume_help: "explain volume files, including label volumes"
    version: "show extended version information"
    list_commands: "list all processing subcommands"
    list_deprecated_commands: "list deprecated subcommands"
    all_commands_help: "show all processing subcommands and their help\\ninfo - VERY LONG"
    linux: "Information options:"
  }
  output {
    File out_stdout = stdout()
  }
}