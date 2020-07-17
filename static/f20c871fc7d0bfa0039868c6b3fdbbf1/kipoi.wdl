version 1.0

task Kipoi {
  input {
    String subcommand_run_commands
  }
  command <<<
    kipoi \
      ~{subcommand_run_commands}
  >>>
  parameter_meta {
    subcommand_run_commands: "Subcommand to run; possible commands: preproc, predict, pull, ls, list_plugins, info, env, test, get-example, test-source, init"
  }
}